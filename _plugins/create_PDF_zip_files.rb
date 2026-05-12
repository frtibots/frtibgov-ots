require "zip"
require "open-uri"
require "fileutils"

class ZipFileGenerator
  def initialize(input_dir, output_file)
    @input_dir = input_dir
    @output_file = output_file
  end

  def write
    entries = Dir.entries(@input_dir) - %w[. ..]
    ::Zip::File.open(@output_file, ::Zip::File::CREATE) do |zipfile|
      write_entries(entries, "", zipfile)
    end
  end

  private

  def write_entries(entries, path, zipfile)
    entries.each do |e|
      zipfile_path = path == "" ? e : File.join(path, e)
      disk_file_path = File.join(@input_dir, zipfile_path)

      if File.directory?(disk_file_path)
        # don't recurse into _archive
        next if zipfile_path.start_with?("_archive")
        recursively_deflate_directory(disk_file_path, zipfile, zipfile_path)
      else
        put_into_archive(disk_file_path, zipfile, zipfile_path)
      end
    end
  end

  def recursively_deflate_directory(disk_file_path, zipfile, zipfile_path)
    subdir = Dir.entries(disk_file_path) - %w[. ..]
    write_entries(subdir, zipfile_path, zipfile)
  end

  def put_into_archive(disk_file_path, zipfile, zipfile_path)
    new_name = File.basename(zipfile_path)
    zipfile.add(new_name, disk_file_path)
  end
end

def fetch_pdf(pdf_url, pdf_name, pdf_dir)
  FileUtils.mkdir_p(pdf_dir)

  headers = {
    "User-Agent" => "Mozilla/5.0 (compatible; frtibgov-ots-jekyll-build)",
    "Accept" => "application/pdf"
  }

  begin
    URI.open(pdf_url, headers) do |remote|
      File.open(File.join(pdf_dir, pdf_name), "wb") do |file|
        IO.copy_stream(remote, file)
      end
    end
    Jekyll.logger.info("PDF fetch", "Downloaded #{pdf_name}")
    true
  rescue OpenURI::HTTPError => e
    Jekyll.logger.warn("PDF fetch", "Skipped #{pdf_url} (#{e.message})")
    false
  rescue StandardError => e
    Jekyll.logger.warn("PDF fetch", "Failed #{pdf_url} (#{e.class}: #{e.message})")
    false
  end
end

def make_zip_file(directory_to_zip, output_file)
  File.delete(output_file) if File.exist?(output_file)
  zf = ZipFileGenerator.new(directory_to_zip, output_file)
  zf.write
end

forms_dir = "_pdf/onboarding/forms/forms/downloads"
info_dir  = "_pdf/onboarding/forms/information/downloads"

# remote completion PDFs in the onbaording/forms section
fetch_PDF "https://www.uscis.gov/sites/default/files/document/forms/i-9-paper-version.pdf", "i-9-paper-version.pdf", forms_dir
fetch_PDF "https://www.opm.gov/forms/pdf_fill/sf1152.pdf", "sf1152.pdf", forms_dir
# fetch_PDF "https://www.gsa.gov/Forms/TrackForm/32810", "sf1199a.pdf", forms_dir
fetch_PDF "https://www.gsa.gov/system/files/SF1199A-20.pdf", "sf1199a.pdf", forms_dir
fetch_PDF "https://www.opm.gov/forms/pdf_fill/sf144.pdf", "sf144.pdf", forms_dir
fetch_PDF "https://www.opm.gov/forms/pdf_fill/sf181.pdf", "sf181.pdf", forms_dir
fetch_PDF "https://www.opm.gov/forms/pdf_fill/sf256.pdf", "sf256.pdf", forms_dir
fetch_PDF "https://www.opm.gov/forms/pdf_fill/sf2809.pdf", "sf2809.pdf", forms_dir
fetch_PDF "https://www.opm.gov/forms/pdf_fill/sf2817.pdf", "sf2817.pdf", forms_dir
fetch_PDF "https://www.opm.gov/forms/pdf_fill/sf2823.pdf", "sf2823.pdf", forms_dir
fetch_PDF "https://www.opm.gov/forms/pdf_fill/sf3102.pdf", "sf3102.pdf", forms_dir
fetch_PDF "https://otr.cfo.dc.gov/sites/default/files/dc/sites/otr/publication/attachments/2017_D-4_Fill-In.pdf", "2017_D-4_Fill-In.pdf", forms_dir
fetch_PDF "https://marylandtaxes.gov/forms/22_forms/MW507.pdf", "MW507.pdf", forms_dir
fetch_PDF "https://marylandtaxes.gov/statepayroll/Static_Files/Employee_W4/2022_MW507M.pdf", "2022_MW507M.pdf", forms_dir
# fetch_PDF "https://tax.virginia.gov/sites/default/files/taxforms/withholding/any/va-4-any.pdf", "va-4-any.pdf", forms_dir
fetch_PDF "https://www.tax.virginia.gov/sites/default/files/taxforms/withholding/any/va-4-any.pdf", "va-4-any.pdf", forms_dir
fetch_PDF "https://www.irs.gov/pub/irs-pdf/fw4.pdf", "fw4.pdf", forms_dir
# fetch_PDF "https://www.tsp.gov/publications/tsp-1.pdf", "tsp-1.pdf", forms_dir
# remote information PDFs in the onbaording/forms section
fetch_PDF "https://www.opm.gov/healthcare-insurance/fastfacts/benefeds.pdf", "benefeds.pdf", info_dir
fetch_PDF "https://www.opm.gov/healthcare-insurance/fastfacts/dental.pdf", "dental.pdf", info_dir
fetch_PDF "https://www.opm.gov/healthcare-insurance/fastfacts/vision.pdf", "vision.pdf", info_dir
fetch_PDF "https://www.opm.gov/healthcare-insurance/fastfacts/fegli.pdf", "fegli.pdf", info_dir
fetch_PDF "https://www.opm.gov/healthcare-insurance/fastfacts/fehb.pdf", "fehb.pdf", info_dir
fetch_PDF "https://www.opm.gov/healthcare-insurance/fastfacts/fsafeds.pdf", "fsafeds.pdf", info_dir
# fetch_PDF "https://www.fsafeds.com/public/pdf/4289-FSAFEDS-New-Hire-Brochure.pdf", "4289-FSAFEDS-New-Hire-Brochure.pdf", info_dir


make_zip_file "_pdf/onboarding/forms/forms", "pdf/onboarding_forms.zip"
make_zip_file "_pdf/onboarding/forms/information", "pdf/onboarding_info.zip"
make_zip_file "_pdf/onboarding/orientation", "pdf/onboarding_orientation.zip"
make_zip_file "_pdf/eeo/", "pdf/eeo.zip"
