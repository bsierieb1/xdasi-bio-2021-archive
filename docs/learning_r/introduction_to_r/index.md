---
title: R Tutorial
hide: true
---

-   [What is R ?](what_is_r.md)
-   [Installing R](installing_r.md) 
-   [Interfacing with R](interfacing_with_r.md)
-   [Executing R commands](executing_r.md)
-   [R Session Management](r_session_management.md)
-   [R packages](r_packages.md)
-   [Getting help in R](help_r.md)


### [**250+ Abbreviations of R commands explained**](http://jeromyanglim.blogspot.com/2010/05/abbreviations-of-r-commands-explained.html)

There are a lot of commands and command arguments in R, and some of the names
can seem cryptic and hard to remember.
***If you find yourself wondering what different command stand for, look here!***

Here is a table of R command abbreviations copied from the above site:
<h4>Table of R Commands</h4>
<table cellspacing="2" cellpadding="1" border="1" align="left">
<TR><TD><b>R Command</b></TD>
    <TD><b>Abbreviation Expanded</b></TD>
    <TD><b>Comments</b></TD></TR>
<TR><TD><CODE>ls</CODE></TD><TD>[L]i[S]t objects</TD><TD>common command in Unix-like operating systems</TD></TR>
<TR><TD><CODE>rm</CODE></TD><TD>[R]e[M]ove objects</TD><TD>common command in Unix-like operating systems</TD></TR>
<TR><TD><CODE>str</CODE></TD><TD>[STR]ucture of an object</TD><TD></TD></TR>
<TR><TD><CODE>unz</CODE></TD><TD>[UNZ]ip</TD><TD></TD></TR>
<TR><TD><CODE>getwd</CODE></TD><TD>[GET] [W]orking [D]irectory</TD><TD></TD></TR>
<TR><TD><CODE>dir</CODE></TD><TD>[DIR]ectory</TD><TD></TD></TR>
<TR><TD><CODE>sprintf</CODE></TD><TD>[S]tring [PRINT] [F]ormatted</TD><TD></TD></TR>
<TR><TD><CODE>c</CODE></TD><TD>[C]ombine values</TD><TD></TD></TR>
<TR><TD><CODE>regexpr</CODE></TD><TD>[REG]ular [EXPR]ession</TD><TD>Why "regular"? See regular sets, regular language</TD></TR>
<TR><TD><CODE>diag</CODE></TD><TD>[DIAG]onal values of a matrix</TD><TD></TD></TR>
<TR><TD><CODE>col</CODE></TD><TD>[COL]umn</TD><TD></TD></TR>
<TR><TD><CODE>lapply</CODE></TD><TD>[L]ist [APPLY]</TD><TD>Apply function to each element and return a list</TD></TR>
<TR><TD><CODE>sapply</CODE></TD><TD>[S]implify [APPLY ]</TD><TD>Apply function to each element and attempt to return a vector (i.e., a vector is "simpler" than a list)</TD></TR>
<TR><TD><CODE>mapply</CODE></TD><TD>[M]ultivariate [APPLY]</TD><TD>Multivariate version of sapply</TD></TR>
<TR><TD><CODE>tapply</CODE></TD><TD>[T]able [APPLY]</TD><TD>Apply function to sets of values as defined by an index</TD></TR>
<TR><TD><CODE>apply</CODE></TD><TD>[APPLY] function to sets of values as defined by an index</TD><TD></TD></TR>
<TR><TD><CODE>MARGIN = 1 or 2 in apply</CODE></TD><TD>rows [1] come before columns [2]</TD><TD>e.g., a 2 x 3 matrix has 2 rows and 3 columns (note: row count is stated first)</TD></TR>
<TR><TD><CODE>rmvnorm</CODE></TD><TD>[R]andom number generator for [M]ulti[V]ariate [NORM]al data</TD><TD></TD></TR>
<TR><TD><CODE>rle</CODE></TD><TD>[R]un [L]ength [E]ncoding</TD><TD></TD></TR>
<TR><TD><CODE>ftable</CODE></TD><TD>[F]ormat [TABLE]</TD><TD></TD></TR>
<TR><TD><CODE>xtabs</CODE></TD><TD>Cross (i.e., [X]) [TAB]ulation</TD><TD>[X] is the symbol of a cross; [X] is sometimes spoken as "by". Cross-tabulating means to cross one variable with another</TD></TR>
<TR><TD><CODE>xtable</CODE></TD><TD>[TABLE] of the object [X]</TD><TD></TD></TR>
<TR><TD><CODE>formatC</CODE></TD><TD>[FORMAT] using [C] style formats</TD><TD>i.e., [C] the programming language</TD></TR>
<TR><TD><CODE>Sweave</CODE></TD><TD>[S] [WEAVE]</TD><TD>The R Programming language is a dialect of S. Weaving involves combining code and documentation</TD></TR>
<TR><TD><CODE>cor</CODE></TD><TD>[COR]relation</TD><TD></TD></TR>
<TR><TD><CODE>ancova</CODE></TD><TD>[AN]alysis [O]f [COVA]riance</TD><TD></TD></TR>
<TR><TD><CODE>manova</CODE></TD><TD>[M]ultivariate [AN]alysis [O]f [VA]riance</TD><TD></TD></TR>
<TR><TD><CODE>aov</CODE></TD><TD>[A]nalysis [O]f [V]ariance</TD><TD></TD></TR>
<TR><TD><CODE>TukeyHSD</CODE></TD><TD>[T]ukey's [H]onestly [S]ignificant [D]ifference</TD><TD></TD></TR>
<TR><TD><CODE>hclust</CODE></TD><TD>[H]ierarchical [CLUST]er analysis</TD><TD></TD></TR>
<TR><TD><CODE>cmdscale</CODE></TD><TD>[C]lassical metric [M]ulti[D]imensional [SCAL]ing</TD><TD></TD></TR>
<TR><TD><CODE>factanal</CODE></TD><TD>[FACT]or [ANAL]ysis</TD><TD></TD></TR>
<TR><TD><CODE>princomp</CODE></TD><TD>[PRIN]cipal [COMP]onents analysis</TD><TD></TD></TR>
<TR><TD><CODE>prcomp</CODE></TD><TD>[PR]incipal [COMP]onents analysis</TD><TD></TD></TR>
<TR><TD><CODE>lme</CODE></TD><TD>[L]inear [M]ixed [E]ffects model</TD><TD></TD></TR>
<TR><TD><CODE>resid</CODE></TD><TD>[RESID]uals</TD><TD></TD></TR>
<TR><TD><CODE>ranef</CODE></TD><TD>[RAN]dom [EF]fects</TD><TD></TD></TR>
<TR><TD><CODE>anova</CODE></TD><TD>[AN]alysis [O]f [VA]riance</TD><TD></TD></TR>
<TR><TD><CODE>fixef</CODE></TD><TD>[FIX]ed [EF]ffects</TD><TD></TD></TR>
<TR><TD><CODE>vcov</CODE></TD><TD>[V]ariance-[COV]ariance matrix</TD><TD></TD></TR>
<TR><TD><CODE>logLik</CODE></TD><TD>[LOG] [LIK]elihood</TD><TD></TD></TR>
<TR><TD><CODE>BIC</CODE></TD><TD>[B]ayesian [I]nformation [C]riteria</TD><TD></TD></TR>
<TR><TD><CODE>mcmcsamp</CODE></TD><TD>[M]arkov [Chain] [Monte] [C]arlo [SAMP]ling</TD><TD></TD></TR>
<TR><TD><CODE>eval</CODE></TD><TD>[EVAL]uate an R expression</TD><TD></TD></TR>
<TR><TD><CODE>cat</CODE></TD><TD>con[CAT]enate</TD><TD>standard Unix command</TD></TR>
<TR><TD><CODE>apropos</CODE></TD><TD>Search documentation for a purpose or on a topic (i.e., [APROPOS])</TD><TD>Unix command for search documentation; </TD></TR>
<TR><TD><CODE>read.csv</CODE></TD><TD>[READ] a file in [C]omma [S]eperated [V]alues format</TD><TD>i.e., in each row of the data commas separate values for each variable</TD></TR>
<TR><TD><CODE>read.fwf</CODE></TD><TD>[READ] a file in [F]ixed [W]idth [F]ormat</TD><TD></TD></TR>
<TR><TD><CODE>seq</CODE></TD><TD>Generate [SEQ]uence</TD><TD></TD></TR>
<TR><TD><CODE>rep</CODE></TD><TD>[REP]licate values of x</TD><TD>perhaps also [REP]eat</TD></TR>
<TR><TD><CODE>dim</CODE></TD><TD>[DIM]ension of an object</TD><TD>Typically, number of rows and columns in a matrix</TD></TR>
<TR><TD><CODE>gl</CODE></TD><TD>[G]enerate factor [L]evels</TD><TD></TD></TR>
<TR><TD><CODE>rbind</CODE></TD><TD>[R]ows [BIND]</TD><TD></TD></TR>
<TR><TD><CODE>cbind</CODE></TD><TD>[C]olumns [BIND]</TD><TD></TD></TR>
<TR><TD><CODE>is.na</CODE></TD><TD>[IS] [N]ot [A]vailable</TD><TD></TD></TR>
<TR><TD><CODE>nrow</CODE></TD><TD>[N]umber of [ROW]s</TD><TD></TD></TR>
<TR><TD><CODE>ncol</CODE></TD><TD>[N]umber of [COL]umns</TD><TD></TD></TR>
<TR><TD><CODE>attr</CODE></TD><TD>[ATTR]ibute</TD><TD></TD></TR>
<TR><TD><CODE>rev</CODE></TD><TD>[REV]erse</TD><TD></TD></TR>
<TR><TD><CODE>diff</CODE></TD><TD>[DIFF]erence between x and a lag of x</TD><TD></TD></TR>
<TR><TD><CODE>prod</CODE></TD><TD>[PROD]uct</TD><TD></TD></TR>
<TR><TD><CODE>var</CODE></TD><TD>[VAR]iance</TD><TD></TD></TR>
<TR><TD><CODE>sd</CODE></TD><TD>[S]tandard [D]eviation</TD><TD></TD></TR>
<TR><TD><CODE>cumsum</CODE></TD><TD>[CUM]ulative [SUM]</TD><TD></TD></TR>
<TR><TD><CODE>cumprod</CODE></TD><TD>[CUM]ulative [PROD]uct</TD><TD></TD></TR>
<TR><TD><CODE>setdiff</CODE></TD><TD>[SET] [DIFF]erence</TD><TD></TD></TR>
<TR><TD><CODE>intersect</CODE></TD><TD>[INTERSECT]ion</TD><TD></TD></TR>
<TR><TD><CODE>Re</CODE></TD><TD>[RE]al part of a number</TD><TD></TD></TR>
<TR><TD><CODE>Im</CODE></TD><TD>[IM]aginary part of a number</TD><TD></TD></TR>
<TR><TD><CODE>Mod</CODE></TD><TD>[MOD]ulo opertion</TD><TD>remainder of division of one number by another</TD></TR>
<TR><TD><CODE>t</CODE></TD><TD>[T]ranspose of a vector or matrix</TD><TD></TD></TR>
<TR><TD><CODE>substr</CODE></TD><TD>[SUBSTR]ing</TD><TD></TD></TR>
<TR><TD><CODE>strsplit</CODE></TD><TD>[STR]ing [SPLIT]</TD><TD></TD></TR>
<TR><TD><CODE>grep</CODE></TD><TD>[G]lobal&#160;/&#160;[R]egular [E]xpression&#160;/&#160;[P]rint</TD><TD>Etymology based on text editor instructions in programs such as ed</TD></TR>
<TR><TD><CODE>sub</CODE></TD><TD>[SUB]stitute identified pattern found in string</TD><TD></TD></TR>
<TR><TD><CODE>gsub</CODE></TD><TD>[G]lobal [SUB]stitute identified pattern found in string</TD><TD></TD></TR>
<TR><TD><CODE>pmatch</CODE></TD><TD>[P]artial string [MATCH]ing</TD><TD></TD></TR>
<TR><TD><CODE>nchar</CODE></TD><TD>[N]umber of [CHAR]acters in a string</TD><TD></TD></TR>
<TR><TD><CODE>ps.options</CODE></TD><TD>[P]ost-[S]cript [OPTIONS] </TD><TD></TD></TR>
<TR><TD><CODE>win.metafile</CODE></TD><TD>[WIN]dows [METAFILE] graphic</TD><TD></TD></TR>
<TR><TD><CODE>dev.off</CODE></TD><TD>[DEV]ice [OFF]</TD><TD></TD></TR>
<TR><TD><CODE>dev.cur</CODE></TD><TD>[CUR]rent [DEV]ice</TD><TD></TD></TR>
<TR><TD><CODE>dev.set</CODE></TD><TD>[SET] the current [DEV]ice</TD><TD></TD></TR>
<TR><TD><CODE>hist</CODE></TD><TD>[HIST]ogram</TD><TD></TD></TR>
<TR><TD><CODE>pie</CODE></TD><TD>[PIE] Chart</TD><TD></TD></TR>
<TR><TD><CODE>coplot</CODE></TD><TD>[CO]nditioning [PLOT]</TD><TD></TD></TR>
<TR><TD><CODE>matplot</CODE></TD><TD>[PLOT] colums of [MAT]rices</TD><TD></TD></TR>
<TR><TD><CODE>assocplot</CODE></TD><TD>[ASSOC]iation [PLOT]</TD><TD></TD></TR>
<TR><TD><CODE>plot.ts</CODE></TD><TD>[PLOT] [T]ime [S]eries</TD><TD></TD></TR>
<TR><TD><CODE>qqnorm</CODE></TD><TD>[Q]uantile-[Q]uantile [P]lot based on normal distribution</TD><TD></TD></TR>
<TR><TD><CODE>persp</CODE></TD><TD>[PERSP]ective [P]lot</TD><TD></TD></TR>
<TR><TD><CODE>xlim</CODE></TD><TD>[LIM]it of the [X] axis</TD><TD></TD></TR>
<TR><TD><CODE>ylim</CODE></TD><TD>[LIM]it of the [Y] axis</TD><TD></TD></TR>
<TR><TD><CODE>xlab</CODE></TD><TD>[LAB]el for the [X] axis</TD><TD></TD></TR>
<TR><TD><CODE>ylab</CODE></TD><TD>[LAB]el for the [Y] axis</TD><TD></TD></TR>
<TR><TD><CODE>main</CODE></TD><TD>[MAIN] title for the plot</TD><TD></TD></TR>
<TR><TD><CODE>sub</CODE></TD><TD>[SUB] title for the plot</TD><TD></TD></TR>
<TR><TD><CODE>mtext</CODE></TD><TD>[M]argin [TEXT]</TD><TD></TD></TR>
<TR><TD><CODE>abline</CODE></TD><TD>[LINE] on plot often of the form y = [A] + [B] x</TD><TD></TD></TR>
<TR><TD><CODE>h argument in abline</CODE></TD><TD>[H]orizontal line</TD><TD></TD></TR>
<TR><TD><CODE>v argument in abline</CODE></TD><TD>[V]ertical line</TD><TD></TD></TR>
<TR><TD><CODE>par</CODE></TD><TD>Graphics [PAR]ameter</TD><TD></TD></TR>
<TR><TD><CODE>adj as par</CODE></TD><TD>[ADJ]ust text [J]ustification</TD><TD></TD></TR>
<TR><TD><CODE>bg as par</CODE></TD><TD>[B]ack[G]round colour</TD><TD></TD></TR>
<TR><TD><CODE>bty as par</CODE></TD><TD>[B]ox [TY]pe</TD><TD></TD></TR>
<TR><TD><CODE>cex as par</CODE></TD><TD>[C]haracter [EX]tension or [EX]pansion of plotting objects</TD><TD></TD></TR>
<TR><TD><CODE>cex.sub as par</CODE></TD><TD>[C]haracter [EX]tension or [EX]pansion of [SUB]title</TD><TD></TD></TR>
<TR><TD><CODE>cex.axis as par</CODE></TD><TD>[C]haracter [EX]tension or [EX]pansion of [AXIS] annotation</TD><TD></TD></TR>
<TR><TD><CODE>cex.lab as par</CODE></TD><TD>[C]haracter [EX]tension or [EX]pansion X and Y [LAB]els</TD><TD></TD></TR>
<TR><TD><CODE>cex.main as par</CODE></TD><TD>[C]haracter [EX]tension or [EX]pansion of [MAIN] title</TD><TD></TD></TR>
<TR><TD><CODE>col as par</CODE></TD><TD>Default plotting [COL]our</TD><TD></TD></TR>
<TR><TD><CODE>las as par</CODE></TD><TD>[L]abel of [A]xis [S]tyle</TD><TD></TD></TR>
<TR><TD><CODE>lty as par</CODE></TD><TD>[L]ine [TY]pe</TD><TD></TD></TR>
<TR><TD><CODE>lwd as par</CODE></TD><TD>[L]ine [W]i[D]th</TD><TD></TD></TR>
<TR><TD><CODE>mar as par</CODE></TD><TD>[MAR]gin width in lines</TD><TD></TD></TR>
<TR><TD><CODE>mfg as par</CODE></TD><TD>Next [G]raph for [M]atrix of [F]igures</TD><TD></TD></TR>
<TR><TD><CODE>mfcol as par</CODE></TD><TD>[M]atrix of [F]igures entered [COL]umn-wise</TD><TD></TD></TR>
<TR><TD><CODE>mfrow as par</CODE></TD><TD>[M]atrix of [F]igures entered [ROW]-wise</TD><TD></TD></TR>
<TR><TD><CODE>pch as par</CODE></TD><TD>[P]lotting [CH]aracter</TD><TD></TD></TR>
<TR><TD><CODE>ps as par</CODE></TD><TD>[P]oint [S]ize of text</TD><TD>Point is a printing measurement</TD></TR>
<TR><TD><CODE>pty as par</CODE></TD><TD>[P]lot region [TY]pe</TD><TD></TD></TR>
<TR><TD><CODE>tck as par</CODE></TD><TD>[T]i[CK] mark length</TD><TD></TD></TR>
<TR><TD><CODE>tcl as par</CODE></TD><TD>[T]i[C]k mark [L]ength</TD><TD></TD></TR>
<TR><TD><CODE>xaxs as par</CODE></TD><TD>[X] [AX]is [S]tyle</TD><TD></TD></TR>
<TR><TD><CODE>yaxs as par</CODE></TD><TD>[Y] [AX]is [S]tyle</TD><TD></TD></TR>
<TR><TD><CODE>xaxt as par</CODE></TD><TD>[X] [AX]is [T]ype</TD><TD></TD></TR>
<TR><TD><CODE>yaxt as par</CODE></TD><TD>[Y] [AX]is [T]ype</TD><TD></TD></TR>
<TR><TD><CODE>asp as par</CODE></TD><TD>[ASP]ect ratio</TD><TD></TD></TR>
<TR><TD><CODE>xlog as par</CODE></TD><TD>[X] axis as [LOG]arithm scale</TD><TD></TD></TR>
<TR><TD><CODE>ylog as par</CODE></TD><TD>[Y] axis as [LOG]arithm scale</TD><TD></TD></TR>
<TR><TD><CODE>omi as par</CODE></TD><TD>[O]uter [M]argin width in [I]nches</TD><TD></TD></TR>
<TR><TD><CODE>mai as par</CODE></TD><TD>[MA]rgin width in [I]nches</TD><TD></TD></TR>
<TR><TD><CODE>pin as par</CODE></TD><TD>[P]lot size in [IN]ches</TD><TD></TD></TR>
<TR><TD><CODE>xpd as par</CODE></TD><TD></TD><TD>Perhaps: [X = Cut] [P]lot ? Perhaps D for device</TD></TR>
<TR><TD><CODE>xyplot</CODE></TD><TD>[X] [Y] [PLOT]</TD><TD>[X] for horizontal axis; [Y] for vertical axis</TD></TR>
<TR><TD><CODE>bwplot</CODE></TD><TD>[B]ox and [W]hisker plot</TD><TD></TD></TR>
<TR><TD><CODE>qq</CODE></TD><TD>[Q]uantile-[Quantile] plot'</TD><TD></TD></TR>
<TR><TD><CODE>splom</CODE></TD><TD>[S]catter[PLO]t [M]atrix</TD><TD></TD></TR>
<TR><TD><CODE>optim</CODE></TD><TD>[OPTIM]isation</TD><TD></TD></TR>
<TR><TD><CODE>lm</CODE></TD><TD>[L]inear [M]odel</TD><TD></TD></TR>
<TR><TD><CODE>glm</CODE></TD><TD>[G]eneralised [L]inear [M]odel</TD><TD></TD></TR>
<TR><TD><CODE>nls</CODE></TD><TD>[N]onlinear [L]east [S]quare parameter esetimation</TD><TD></TD></TR>
<TR><TD><CODE>loess</CODE></TD><TD>[LO]cally [E]stimated [S]catterplot [S]moothing</TD><TD></TD></TR>
<TR><TD><CODE>prop.test</CODE></TD><TD>[TEST] null hypothesis that [PROP]ortions in several gropus are the same</TD><TD></TD></TR>
<TR><TD><CODE>rnorm</CODE></TD><TD>[R]andom number drawn from [NORM]al distribution</TD><TD></TD></TR>
<TR><TD><CODE>dnorm</CODE></TD><TD>[D]ensity of a given quantile in a [NORM]al distribution</TD><TD></TD></TR>
<TR><TD><CODE>pnorm</CODE></TD><TD>[D]istribution function for [NORM]al distribution returning cumulaive [P]robability</TD><TD></TD></TR>
<TR><TD><CODE>qnorm</CODE></TD><TD>[Q]uantile function based on [NORM]al distribution</TD><TD></TD></TR>
<TR><TD><CODE>rexp</CODE></TD><TD>[R]andom number generation from [EXP]onential distribution</TD><TD></TD></TR>
<TR><TD><CODE>rgamma</CODE></TD><TD>[R]andom number generation from [GAMMA] distribution</TD><TD></TD></TR>
<TR><TD><CODE>rpois</CODE></TD><TD>[R]andom number generation from [POIS]on distribution</TD><TD></TD></TR>
<TR><TD><CODE>rweibull</CODE></TD><TD>[R]andom number generation from [WEIBULL] distribution</TD><TD></TD></TR>
<TR><TD><CODE>rcauchy</CODE></TD><TD>[R]andom number generation from [CAUCHY] distribution</TD><TD></TD></TR>
<TR><TD><CODE>rbeta</CODE></TD><TD>[R]andom number generation from [BETA] distribution</TD><TD></TD></TR>
<TR><TD><CODE>rt</CODE></TD><TD>[R]andom number generation from [t] distribution</TD><TD></TD></TR>
<TR><TD><CODE>rf</CODE></TD><TD>[R]andom number generation from [F] distribution</TD><TD>F for Ronald [F]isher</TD></TR>
<TR><TD><CODE>rchisq</CODE></TD><TD>[R]andom number generation from [CHI] [SQ]uare distribution</TD><TD></TD></TR>
<TR><TD><CODE>rbinom</CODE></TD><TD>[R]andom number generation from [BINOM]ial distribution</TD><TD></TD></TR>
<TR><TD><CODE>rgeom</CODE></TD><TD>[R]andom number generation from [EXP]onential distribution</TD><TD></TD></TR>
<TR><TD><CODE>rhyper</CODE></TD><TD>[R]andom number generation from [HYPER]geometric distribution</TD><TD></TD></TR>
<TR><TD><CODE>rlogis</CODE></TD><TD>[R]andom number generation from [LOGIS]tic distribution</TD><TD></TD></TR>
<TR><TD><CODE>rlnorm</CODE></TD><TD>[R]andom number generation from [L]og [NOR]mal distribution</TD><TD></TD></TR>
<TR><TD><CODE>rnbinom</CODE></TD><TD>[R]andom number generation from [N]egative [BINOM]ial distribution</TD><TD></TD></TR>
<TR><TD><CODE>runif</CODE></TD><TD>[R]andom number generation from [UNIF]orm distribution</TD><TD></TD></TR>
<TR><TD><CODE>rwilcox</CODE></TD><TD>[R]andom number generation from [WILCOX]on distribution</TD><TD></TD></TR>
<TR><TD><CODE>ggplot in ggplot2</CODE></TD><TD>[G]rammar of [G]raphics [PLOT]</TD><TD>See Leland Wilkinson (1999)</TD></TR>
<TR><TD><CODE>aes in ggplot2</CODE></TD><TD>[AES]thetic mapping</TD><TD></TD></TR>
<TR><TD><CODE>geom_ in ggplot2</CODE></TD><TD>[GEOM]etric object</TD><TD></TD></TR>
<TR><TD><CODE>stat_ in ggplot2</CODE></TD><TD>[STAT]istical summary</TD><TD></TD></TR>
<TR><TD><CODE>coord_ in ggplot2</CODE></TD><TD>[COORD]inate system</TD><TD></TD></TR>
<TR><TD><CODE>qplot in ggplot2</CODE></TD><TD>[Q]uick [PLOT]</TD><TD></TD></TR>
<TR><TD><CODE>x as argument</CODE></TD><TD>[X] is common letter for unknown variable in math</TD><TD></TD></TR>
<TR><TD><CODE>FUN as argument</CODE></TD><TD>[FUN]ction</TD><TD></TD></TR>
<TR><TD><CODE>pos as argument</CODE></TD><TD>[POS]ition</TD><TD></TD></TR>
<TR><TD><CODE>lib.loc in library</CODE></TD><TD>[LIB]rary folder [LOC]ation</TD><TD></TD></TR>
<TR><TD><CODE>sep as argument</CODE></TD><TD>[SEP]erator character</TD><TD></TD></TR>
<TR><TD><CODE>comment.char in read.table</CODE></TD><TD>[COMMENT] [CHAR]acter(s)</TD><TD></TD></TR>
<TR><TD><CODE>I</CODE></TD><TD>[I]nhibit [I]nterpretation or [I]nsulate</TD><TD></TD></TR>
<TR><TD><CODE>T value</CODE></TD><TD>[T]rue</TD><TD></TD></TR>
<TR><TD><CODE>F value</CODE></TD><TD>[F]alse</TD><TD></TD></TR>
<TR><TD><CODE>na.rm as argument</CODE></TD><TD>[N]ot [A]vailable [R]e[M]oved</TD><TD></TD></TR>
<TR><TD><CODE>fivenum</CODE></TD><TD>[FIVE] [NUM]ber summary</TD><TD></TD></TR>
<TR><TD><CODE>IQR</CODE></TD><TD>[I]nter [Q]uartile [R]ange</TD><TD></TD></TR>
<TR><TD><CODE>coef</CODE></TD><TD>Model [COEF]ficients</TD><TD></TD></TR>
<TR><TD><CODE>dist</CODE></TD><TD>[DIST]ance matrix</TD><TD></TD></TR>
<TR><TD><CODE>df as argument</CODE></TD><TD>[D]egrees of [F]reedom</TD><TD></TD></TR>
<TR><TD><CODE>mad</CODE></TD><TD>[M]edian [A]bsolute [D]eviation</TD><TD></TD></TR>
<TR><TD><CODE>sink</CODE></TD><TD></TD><TD>Divert R output to a connection (i.e., like connecting a pipe to a [SINK])</TD></TR>
<TR><TD><CODE>eol in write.table</CODE></TD><TD>[End] [O]f [L]ine character(s)</TD><TD></TD></TR>
<TR><TD><CODE>R as software</CODE></TD><TD>[R]oss Ihaka and [R]obert Gentleman or [R] is letter before S</TD><TD></TD></TR>
<TR><TD><CODE>CRAN as word</CODE></TD><TD>[C]omprehensive [R] [A]rchive [N]etwork</TD><TD>As I understand it: Inpsired by CTAN (Comprehensive TeX Archive Network); pronunciation of CRAN rhymes with CTAN (i.e., "See" ran as in Iran; "See tan")</TD></TR>
<TR><TD><CODE>Sexpr</CODE></TD><TD>[S] [EXPR]ession</TD><TD></TD></TR>
<TR><TD><CODE>ls.str</CODE></TD><TD>Show [STR]ucture of [L]i[S]ted objects</TD><TD></TD></TR>
<TR><TD><CODE>browseEnv</CODE></TD><TD>[BROWSE] [ENV]ironment</TD><TD></TD></TR>
<TR><TD><CODE>envir as argument</CODE></TD><TD>[ENVIR]onment</TD><TD></TD></TR>
<TR><TD><CODE>q</CODE></TD><TD>[Q]uit</TD><TD></TD></TR>
<TR><TD><CODE>cancor</CODE></TD><TD>[CAN]onical [COR]relation</TD><TD></TD></TR>
<TR><TD><CODE>ave</CODE></TD><TD>[AVE]rage</TD><TD></TD></TR>
<TR><TD><CODE>min</CODE></TD><TD>[MIN]imum</TD><TD></TD></TR>
<TR><TD><CODE>max</CODE></TD><TD>[MAX]imum</TD><TD></TD></TR>
<TR><TD><CODE>sqrt</CODE></TD><TD>[SQ]uare [R]oo[T]</TD><TD></TD></TR>
<TR><TD><CODE>%o%</CODE></TD><TD>[O]uter product</TD><TD></TD></TR>
<TR><TD><CODE>&</CODE></TD><TD></TD><TD>& is ampersand meaning [AND]</TD></TR>
<TR><TD><CODE>|</CODE></TD><TD></TD><TD>| often used to represent OR in computing (http://en.wikipedia.org /wiki /Logical_disjunction)</TD></TR>
<TR><TD><CODE>:</CODE></TD><TD></TD><TD>sequence generator; aslo used in MATLAB</TD></TR>
<TR><TD><CODE>nlevels</CODE></TD><TD>[N]umber of [LEVELS] in a factor</TD><TD></TD></TR>
<TR><TD><CODE>det</CODE></TD><TD>[DET]erminant of a matrix</TD><TD></TD></TR>
<TR><TD><CODE>crossprod</CODE></TD><TD>Matrix [CROSSPROD]uct</TD><TD></TD></TR>
<TR><TD><CODE>gls</CODE></TD><TD>[G]eneralised [L]east [S]quares</TD><TD></TD></TR>
<TR><TD><CODE>dwtest in lmtest</CODE></TD><TD>[D]urbin-[W]atson Test</TD><TD></TD></TR>
<TR><TD><CODE>sem in sem</CODE></TD><TD>[S]tructural [E]quation [M]odel</TD><TD></TD></TR>
<TR><TD><CODE>betareg in betareg</CODE></TD><TD>[BETA] [REG]ression</TD><TD></TD></TR>
<TR><TD><CODE>log</CODE></TD><TD>Natural [LOG]arithm</TD><TD>Default base is e consistent with most mathematics (http://en.wikipedia.org /wiki /Logarithm#Implicit_bases)</TD></TR>
<TR><TD><CODE>log10</CODE></TD><TD>[LOG]arithm base 10</TD><TD></TD></TR>
<TR><TD><CODE>fft</CODE></TD><TD>[F]ast [F]ourier [T]ransform</TD><TD></TD></TR>
<TR><TD><CODE>exp</CODE></TD><TD>[EXP]onential function</TD><TD>i.e., e^x</TD></TR>
<TR><TD><CODE>df.residual</CODE></TD><TD>[D]egrees of [F]reedom of the [R]esidual </TD><TD></TD></TR>
<TR><TD><CODE>sin</CODE></TD><TD>[SIN]e function</TD><TD></TD></TR>
<TR><TD><CODE>cos</CODE></TD><TD>[COS]ine function</TD><TD></TD></TR>
<TR><TD><CODE>tan</CODE></TD><TD>[TAN]gent function</TD><TD></TD></TR>
<TR><TD><CODE>asin</CODE></TD><TD>[A]rc[SIN]e function</TD><TD></TD></TR>
<TR><TD><CODE>acos</CODE></TD><TD>[A]rc[COS]ine function</TD><TD></TD></TR>
<TR><TD><CODE>atan</CODE></TD><TD>[A]rc[TAN]gent function</TD><TD></TD></TR>
<TR><TD><CODE>deriv</CODE></TD><TD>[DERIV]ative</TD><TD></TD></TR>
<TR><TD><CODE>chol</CODE></TD><TD>[Choleski] decomposition</TD><TD></TD></TR>
<TR><TD><CODE>chol2inv</CODE></TD><TD>[CHOL]eski [2=TO] [INV]erse</TD><TD></TD></TR>
<TR><TD><CODE>svd</CODE></TD><TD>[S]ingular [V]alue [D]ecomposition</TD><TD></TD></TR>
<TR><TD><CODE>eigen</CODE></TD><TD>[EIGEN]value or [EIGEN]vector</TD><TD></TD></TR>
<TR><TD><CODE>lower.tri</CODE></TD><TD>[LOWER] [TRI]angle of a matrix</TD><TD></TD></TR>
<TR><TD><CODE>upper.tri</CODE></TD><TD>[UPPER] [TRI]angle of a matrix</TD><TD></TD></TR>
<TR><TD><CODE>acf</CODE></TD><TD>[A]uto [C]orrelation or [C]ovariance [F]unction</TD><TD></TD></TR>
<TR><TD><CODE>pacf</CODE></TD><TD>[P]artial A]uto [C]orrelation or [C]ovariance [F]unction</TD><TD></TD></TR>
<TR><TD><CODE>ccf</CODE></TD><TD>[C]ross [C]orrelation or [C]ovariance [F]unction</TD><TD></TD></TR>
<TR><TD><CODE>Rattle as software</CODE></TD><TD>[R] [A]nalytical [T]ool [T]o [L]earn [E]asily</TD><TD>Perhaps, easy like a baby's rattle</TD></TR>
<TR><TD><CODE>StatET as software</CODE></TD><TD></TD><TD>Anyone know? Statistics Eclipse?</TD></TR>
<TR><TD><CODE>JGR as software</CODE></TD><TD>[J]ava [G]UI for [R]</TD><TD>pronounced "Jaguar" like the cat</TD></TR>
<TR><TD><CODE>ESS as software</CODE></TD><TD>[E]macs [S]peaks [S]tatistics</TD><TD></TD></TR>
<TR><TD><CODE>Rcmdr package</CODE></TD><TD>[R] [C]o[m]man[d]e[r] GUI</TD><TD></TD></TR>
<TR><TD><CODE>prettyNum</CODE></TD><TD>[PRETTY] [NUM]ber</TD><TD></TD></TR>
<TR><TD><CODE>Inf value</CODE></TD><TD>[Inf]inite</TD><TD></TD></TR>
<TR><TD><CODE>NaN value</CODE></TD><TD>[N]ot [A] [N]umber</TD><TD></TD></TR>
<TR><TD><CODE>is.nan</CODE></TD><TD>[IS] [N]ot [A] [N]umber</TD><TD></TD></TR>
<TR><TD><CODE>S3</CODE></TD><TD></TD><TD>R is a dialect of [S]; 3 is the version number</TD></TR>
<TR><TD><CODE>S4</CODE></TD><TD></TD><TD>R is a dialect of [S]; 4 is the version number</TD></TR>
<TR><TD><CODE>Rterm as program</CODE></TD><TD>[R] [TERM]inal</TD><TD></TD></TR>
<TR><TD><CODE>R CMD as program</CODE></TD><TD></TD><TD>I think: [R] [C]o[m]man[D] prompt</TD></TR>
<TR><TD><CODE>repos as option</CODE></TD><TD>[REPOS]itory locations</TD><TD></TD></TR>
<TR><TD><CODE>bin folder</CODE></TD><TD>[BIN]aries</TD><TD>Common Unix folder for "essential command&#160;binaries"</TD></TR>
<TR><TD><CODE>etc folder</CODE></TD><TD>[et cetera]</TD><TD>Common Unix folder for "host-specific system-wide configuration files</TD></TR>
<TR><TD><CODE>src folder</CODE></TD><TD>[S]ou[RC]e [C]ode</TD><TD>Common Unix folder</TD></TR>
<TR><TD><CODE>doc folder</CODE></TD><TD>[DOC]umentation</TD><TD></TD></TR>
<TR><TD><CODE>RGUI program</CODE></TD><TD>[R] [G]rapical [U]ser [I]nterface</TD><TD></TD></TR>
<TR><TD><CODE>.site file extension</CODE></TD><TD>[SITE] specific file</TD><TD>e.g., RProfile.site</TD></TR>
<TR><TD><CODE>Hmisc package</CODE></TD><TD>Frank [HARRELL]'s package of [MISC]elaneous functions</TD><TD></TD></TR>
<TR><TD><CODE>n in debug</CODE></TD><TD>[N]ext step</TD><TD></TD></TR>
<TR><TD><CODE>c in debug</CODE></TD><TD>[C]ontinue</TD><TD></TD></TR>
<TR><TD><CODE>Q in debug</CODE></TD><TD>[Q]uit</TD><TD></TD></TR>
<TR><TD><CODE>MASS package</CODE></TD><TD>[M]odern [A]pplied [S]tatistics with [S]</TD><TD>Based on book of same name by Venables and Ripley</TD></TR>
<TR><TD><CODE>plyr package</CODE></TD><TD>PL[Y=ie][R]</TD><TD>Double play on words: (1) package manipulates data like pliers manipulate materials; (2) last letter is R as in the program</TD></TR>
<TR><TD><CODE>aaply</CODE></TD><TD>input [A]rray output [A]rray using [PLY]r package</TD><TD></TD></TR>
<TR><TD><CODE>daply</CODE></TD><TD>input [D]ata frame output [A]rray using [PLY]r package</TD><TD></TD></TR>
<TR><TD><CODE>laply</CODE></TD><TD>input [L]ist output [A]rray using [PLY]r package</TD><TD></TD></TR>
<TR><TD><CODE>adply</CODE></TD><TD>input [A]rray output [D]ata frame using [PLY]r package</TD><TD></TD></TR>
<TR><TD><CODE>alply</CODE></TD><TD>input [A]rray output [L]ist using [PLY]r package</TD><TD></TD></TR>
<TR><TD><CODE>a_ply</CODE></TD><TD>input [A]rray output Discarded (i.e., _ is blank) using [PLY]r package</TD><TD></TD></TR>
<TR><TD><CODE>RODBC package</CODE></TD><TD>[R] [O]bject [D]ata[B]ase [C]onnectivity</TD><TD></TD></TR>
<TR><TD><CODE>psych package</CODE></TD><TD>[PSYCH]ology related functions</TD><TD></TD></TR>
<TR><TD><CODE>zelig package</CODE></TD><TD></TD><TD>"Zelig is named after a Woody Allen movie about a man who had the strange ability to become the physical and psychological reflection of anyone he met and thus to fit perfectly in any situation." - http://gking. harvard.edu/ zelig/</TD></TR>
<TR><TD><CODE>strucchange package</CODE></TD><TD>[STRUC]tural [CHANGE]</TD><TD></TD></TR>
<TR><TD><CODE>relaimpo package</CODE></TD><TD>[RELA]tive [IMPO]rtance</TD><TD></TD></TR>
<TR><TD><CODE>car package</CODE></TD><TD>[C]ompanion to [A]pplied [R]egression</TD><TD>Named after book by John Fox</TD></TR>
<TR><TD><CODE>OpenMx packge</CODE></TD><TD>[OPEN] Source [M]atri[X] algebra interpreter</TD><TD>Need confirmation that [Mx] means matrix</TD></TR>
<TR><TD><CODE>df in write.foreign</CODE></TD><TD>[D]ata [F]rame</TD><TD></TD></TR>
<TR><TD><CODE>GNU S word</CODE></TD><TD>[GNU] is [N]ot [U]nix [S]</TD><TD></TD></TR>
<TR><TD><CODE>R FAQ word</CODE></TD><TD>R [F]requently [A]sked [Q]uestions</TD><TD></TD></TR>
<TR><TD><CODE>DVI format</CODE></TD><TD>[D]e[V]ice [I]ndependent file format</TD><TD></TD></TR>
<TR><TD><CODE>devel word</CODE></TD><TD>[DEVEL]opment</TD><TD>as in code under development</TD></TR>
<TR><TD><CODE>GPL word</CODE></TD><TD>[G]eneral [P]ublic [L]icense</TD><TD></TD></TR>
<TR><TD><CODE>utils package</CODE></TD><TD>[UTIL]itie[S]</TD><TD></TD></TR>
<TR><TD><CODE>mle</CODE></TD><TD>[M]aximum [L]ikelihood [E]stimation</TD><TD></TD></TR>
<TR><TD><CODE>rpart package</CODE></TD><TD>[R]ecursive [PART]itioning</TD><TD></TD></TR>
<TR><TD><CODE>sna package</CODE></TD><TD>[S]ocial [N]etwork [A]nalysis</TD><TD></TD></TR>
<TR><TD><CODE>ergm package</CODE></TD><TD>[E]xponential [R]andom [G]raph [M]odels</TD><TD></TD></TR>
<TR><TD><CODE>rbugs package</CODE></TD><TD>[R] interface to program [B]ayesian inference [Using] [G]ibbs [S]ampling</TD><TD></TD></TR>

</table>
