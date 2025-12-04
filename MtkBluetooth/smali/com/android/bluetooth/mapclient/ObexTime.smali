.class public final Lcom/android/bluetooth/mapclient/ObexTime;
.super Ljava/lang/Object;
.source "ObexTime.java"


# instance fields
.field private mDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "(\\d{4})(\\d{2})(\\d{2})T(\\d{2})(\\d{2})(\\d{2})(([+-])(\\d{2})(\\d{2}))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    new-instance v0, Ljava/util/Calendar$Builder;

    invoke-direct {v0}, Ljava/util/Calendar$Builder;-><init>()V

    .line 58
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    .line 59
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v1, 0x3

    .line 60
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 58
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/Calendar$Builder;->setDate(III)Ljava/util/Calendar$Builder;

    .line 63
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    .line 64
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x6

    .line 65
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    .line 63
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/Calendar$Builder;->setTimeOfDay(IIII)Ljava/util/Calendar$Builder;

    .line 72
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 73
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 74
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 77
    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    .line 79
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    neg-int v1, v1

    .line 83
    :cond_0
    const-string p1, "UTC"

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 84
    invoke-virtual {p1, v1}, Ljava/util/TimeZone;->setRawOffset(I)V

    .line 86
    invoke-virtual {v0, p1}, Ljava/util/Calendar$Builder;->setTimeZone(Ljava/util/TimeZone;)Ljava/util/Calendar$Builder;

    .line 89
    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar$Builder;->build()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/mapclient/ObexTime;->mDate:Ljava/util/Date;

    .line 91
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/ObexTime;->mDate:Ljava/util/Date;

    .line 95
    return-void
.end method


# virtual methods
.method public getTime()Ljava/util/Date;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/ObexTime;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 103
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/ObexTime;->mDate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/ObexTime;->mDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 111
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    .line 112
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const/16 v5, 0xc

    .line 113
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    .line 111
    const-string v0, "%04d%02d%02dT%02d%02d%02d"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
