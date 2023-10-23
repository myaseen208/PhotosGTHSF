setwd("D:/MYaseen208_B0-22-7A-E9-23-9B/Consultancy/Mr._M._Yaseen/08GTHSF/Website/PhotosGTHSF")

library(png)
library(webp)
library(furrr)


list.files(
    path       = getwd()
  , pattern    = "*.png"
  , full.names = TRUE
  ) |> 
  future_map(
      .x        = 
    , .f        = pdf_convert
    , format    = "png"
    , pages     = NULL
    , filenames = NULL
    , dpi       = 300
    )


write_webp(
    image   = readPNG("GTHSF_1.png")
  , target  = "GTHSF_1.webp"
  , quality = 80
  )


future_map(
    .x = paste(getwd(), "/", list.files(getwd(), pattern = "*.pdf"), sep = "")
  , .f = function(files) {
          pdf_convert(files, format = "png", dpi = 300, pages = NULL, filenames = )
    }
  )


pdf_convert(
      pdf       = "Resignation_from_UAF.pdf"
    , format    = "png"
    , pages     = NULL
    , filenames = "Resignation_from_UAF.png"
    , dpi       = 300
    )