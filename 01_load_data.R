library('log4r')
library('LaF')

setwd("C:\\Users\\fabio\\SkyDrive\\Documentos\\UFES\\Competition\\Data\\Cotacoes_fechamento")

# Create a new logger object with create.logger().
logger <- create.logger()
# Set the logger's file output: currently only allows flat files.
logfile(logger) <- file.path('load_data.log')
# Set the current level of the logger.
level(logger) <- "INFO"

#Define column types
ctypes <- c("integer", "string", "integer", "string", "integer", "string", "string", "string", "string", "double", "double", "double", "double", "double", "double", "double", "integer", "integer", "integer", "integer", "integer", "string", "integer", "double", "string", "integer")
#Define column widths
cwidths <- c(2, 8, 2, 12, 3, 12, 10, 3, 4, 13, 13, 13, 13, 13, 13, 13, 5, 18, 18, 13, 1, 8, 7, 13, 12, 3)
#Define column names
cnames <- c("type", "dat_negotiation", "cod_bdi", "cod_negotiation", "typ_mkt", "name", "security_spec", "num_days", "currency", "prc_open", "prc_max", "prc_min", "prc_avg", "prc_close", "prc_bid", "prc_ask", "num_trades", "qtd_trades", "vol_trades", "prc_strike", "typ_prc_correction", "dat_expiry", "factor", "prc_strike_points", "cod_isin", "num_distr")
#Define column descriptions
cdesc <- c("Record type", "Negotiation date", "BDI code", "Negotiation code", "Market type", "Firm name", "Security specification", "Num days fwd mkt", "Currency", "Opening price", "Maximum price", "Minimum price", "Average price", "Closing price", "Highest bid price", "Lowest ask price", "Number trades", "Quantity traded", "Volume ($) traded", "Strike price", "Price correction", "Expiration date", "Multiplier factor", "Strike price (points)", "ISIN code", "Sequence number")

#Create LaF object
#data <- laf_open_fwf("COTAHIST.A1994", column_types=ctypes, column_widths=cwidths, column_names=cnames, trim=TRUE, skip=1)
#goto(datalaf, 2)
#Create file object
data <- read.fwf(file="COTAHIST.A1994", skip=1, widths=cwidths, header=FALSE, col.names=cnames)
#Load data
price_data <- data[ , ]
			
