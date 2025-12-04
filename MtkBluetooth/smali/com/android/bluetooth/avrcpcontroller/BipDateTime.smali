.class public Lcom/android/bluetooth/avrcpcontroller/BipDateTime;
.super Ljava/lang/Object;
.source "BipDateTime.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "avrcpcontroller.BipDateTime"


# instance fields
.field private mDate:Ljava/util/Date;

.field private mIsUtc:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;->mDate:Ljava/util/Date;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;->mIsUtc:Z

    .line 58
    :try_start_0
    const-string v1, "(\\d{4})(\\d{2})(\\d{2})T(\\d{2})(\\d{2})(\\d{2})([Z])?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 59
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    new-instance v2, Ljava/util/Calendar$Builder;

    invoke-direct {v2}, Ljava/util/Calendar$Builder;-><init>()V

    .line 66
    invoke-virtual {v2, v0}, Ljava/util/Calendar$Builder;->setLenient(Z)Ljava/util/Calendar$Builder;

    .line 69
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    .line 70
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v5, v3

    const/4 v6, 0x3

    .line 71
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 69
    invoke-virtual {v2, v4, v5, v6}, Ljava/util/Calendar$Builder;->setDate(III)Ljava/util/Calendar$Builder;

    .line 74
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x5

    .line 75
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x6

    .line 76
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 74
    invoke-virtual {v2, v4, v5, v6, v0}, Ljava/util/Calendar$Builder;->setTimeOfDay(IIII)Ljava/util/Calendar$Builder;

    .line 80
    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v0}, Ljava/util/TimeZone;->setRawOffset(I)V

    .line 83
    invoke-virtual {v2, v1}, Ljava/util/Calendar$Builder;->setTimeZone(Ljava/util/TimeZone;)Ljava/util/Calendar$Builder;

    .line 84
    iput-boolean v3, p0, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;->mIsUtc:Z

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    iput-boolean v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;->mIsUtc:Z

    .line 90
    :goto_0
    invoke-virtual {v2}, Ljava/util/Calendar$Builder;->build()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;->mDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    return-void

    .line 95
    :catch_0
    move-exception v0

    goto :goto_1

    .line 93
    :catch_1
    move-exception v0

    .line 97
    :cond_1
    nop

    .line 100
    :goto_1
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse time \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;->mDate:Ljava/util/Date;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;->mIsUtc:Z

    .line 104
    const-string v0, "Date cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Date;

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;->mDate:Ljava/util/Date;

    .line 105
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;->mIsUtc:Z

    .line 106
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 118
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 119
    :cond_0
    instance-of v1, p1, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 121
    :cond_1
    check-cast p1, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;

    .line 122
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;->isUtc()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;->isUtc()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;->getTime()Ljava/util/Date;

    move-result-object v1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method public isUtc()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;->mIsUtc:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 127
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 128
    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 132
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 133
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;->isUtc()Z

    move-result v0

    const/16 v2, 0xd

    const/16 v3, 0xc

    const/4 v4, 0x4

    const/16 v5, 0xb

    const/4 v6, 0x3

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v0, :cond_1

    .line 137
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 138
    invoke-virtual {v0, v8}, Ljava/util/TimeZone;->setRawOffset(I)V

    .line 139
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 140
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v7, v8

    .line 141
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    .line 142
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v6

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    .line 143
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v9

    .line 140
    const-string v1, "%04d%02d%02dT%02d%02d%02dZ"

    invoke-static {v0, v1, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 145
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 146
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v7, v8

    .line 147
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    .line 148
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v6

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    .line 149
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v9

    .line 146
    const-string v1, "%04d%02d%02dT%02d%02d%02d"

    invoke-static {v0, v1, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
