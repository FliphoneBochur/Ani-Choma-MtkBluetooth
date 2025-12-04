.class public Lcom/android/bluetooth/map/BluetoothMapUtils;
.super Ljava/lang/Object;
.source "BluetoothMapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    }
.end annotation


# static fields
.field public static final CONVO_ID_TYPE_EMAIL_IM:J = 0x2L

.field public static final CONVO_ID_TYPE_SMS_MMS:J = 0x1L

.field private static final D:Z

.field private static final ESCAPE_CHAR:B = 0x3dt

.field private static final HANDLE_TYPE_EMAIL_MASK:J = 0x200000000000000L

.field private static final HANDLE_TYPE_IM_MASK:J = 0x1000000000000000L

.field private static final HANDLE_TYPE_MASK:J = -0x100000000000000L

.field private static final HANDLE_TYPE_MMS_MASK:J = 0x100000000000000L

.field private static final HANDLE_TYPE_SMS_CDMA_MASK:J = 0x800000000000000L

.field private static final HANDLE_TYPE_SMS_GSM_MASK:J = 0x400000000000000L

.field private static final LONG_LONG_LENGTH:I = 0x20

.field static final MAP_EVENT_REPORT_V10:I = 0xa

.field static final MAP_EVENT_REPORT_V11:I = 0xb

.field static final MAP_EVENT_REPORT_V12:I = 0xc

.field static final MAP_FEATURE_BROWSING_BIT:I = 0x4

.field static final MAP_FEATURE_CONVERSATION_VERSION_COUNTER_BIT:I = 0x2000

.field static final MAP_FEATURE_DATABASE_INDENTIFIER_BIT:I = 0x800

.field static final MAP_FEATURE_DEFAULT_BITMASK:I = 0x1f

.field static final MAP_FEATURE_DEFINED_TIMESTAMP_FORMAT_BIT:I = 0x40000

.field static final MAP_FEATURE_DELETE_BIT:I = 0x10

.field static final MAP_FEATURE_EVENT_REPORT_V12_BIT:I = 0x80

.field static final MAP_FEATURE_EXTENDED_EVENT_REPORT_11_BIT:I = 0x40

.field static final MAP_FEATURE_FOLDER_VERSION_COUNTER_BIT:I = 0x1000

.field static final MAP_FEATURE_INSTANCE_INFORMATION_BIT:I = 0x20

.field static final MAP_FEATURE_MESSAGE_FORMAT_V11_BIT:I = 0x100

.field static final MAP_FEATURE_MESSAGE_LISTING_FORMAT_V11_BIT:I = 0x200

.field static final MAP_FEATURE_NOTIFICATION_BIT:I = 0x2

.field static final MAP_FEATURE_NOTIFICATION_FILTERING_BIT:I = 0x20000

.field static final MAP_FEATURE_NOTIFICATION_REGISTRATION_BIT:I = 0x1

.field static final MAP_FEATURE_PARTICIPANT_CHAT_STATE_CHANGE_BIT:I = 0x8000

.field static final MAP_FEATURE_PARTICIPANT_PRESENCE_CHANGE_BIT:I = 0x4000

.field static final MAP_FEATURE_PBAP_CONTACT_CROSS_REFERENCE_BIT:I = 0x10000

.field static final MAP_FEATURE_PERSISTENT_MESSAGE_HANDLE_BIT:I = 0x400

.field static final MAP_FEATURE_UPLOADING_BIT:I = 0x8

.field static final MAP_MESSAGE_FORMAT_V10:I = 0xa

.field static final MAP_MESSAGE_FORMAT_V11:I = 0xb

.field static final MAP_MESSAGE_LISTING_FORMAT_V10:I = 0xa

.field static final MAP_MESSAGE_LISTING_FORMAT_V11:I = 0xb

.field static final MAP_V10_STR:Ljava/lang/String; = "1.0"

.field static final MAP_V11_STR:Ljava/lang/String; = "1.1"

.field static final MAP_V12_STR:Ljava/lang/String; = "1.2"

.field private static final PATTERN:Ljava/util/regex/Pattern;

.field private static final SPACE:B = 0x20t

.field private static final TAB:B = 0x9t

.field private static final TAG:Ljava/lang/String; = "BluetoothMapUtils"

.field private static final V:Z

.field private static mPeerSupportUtcTimeStamp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->D:Z

    .line 57
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->V:Z

    .line 114
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->mPeerSupportUtcTimeStamp:Z

    .line 465
    const-string v0, "=\\?(.+?)\\?(.)\\?(.+?(?=\\?=))\\?="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detectCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 708
    :try_start_0
    const-string v0, "country_detector"

    .line 709
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/CountryDetector;

    .line 710
    invoke-virtual {p0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object p0

    .line 711
    if-eqz p0, :cond_0

    .line 712
    invoke-virtual {p0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 716
    :cond_0
    goto :goto_0

    .line 714
    :catch_0
    move-exception p0

    .line 715
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 717
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final encodeQuotedPrintable([B)Ljava/lang/String;
    .locals 6

    .line 646
    if-nez p0, :cond_0

    .line 647
    const/4 p0, 0x0

    return-object p0

    .line 650
    :cond_0
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 652
    const/16 v1, 0x21

    :goto_0
    const/16 v2, 0x3c

    if-gt v1, v2, :cond_1

    .line 653
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 652
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 655
    :cond_1
    const/16 v1, 0x3e

    :goto_1
    const/16 v2, 0x7e

    if-gt v1, v2, :cond_2

    .line 656
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 655
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 658
    :cond_2
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 659
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 660
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 661
    const/4 v2, 0x0

    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_5

    .line 662
    aget-byte v3, p0, v2

    .line 663
    if-gez v3, :cond_3

    .line 664
    add-int/lit16 v3, v3, 0x100

    .line 666
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 667
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3

    .line 669
    :cond_4
    const/16 v4, 0x3d

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 670
    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 671
    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 672
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 673
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 661
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 677
    :cond_5
    :try_start_0
    const-string p0, "UTF-8"

    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 678
    :catch_0
    move-exception p0

    .line 680
    const-string p0, ""

    return-object p0
.end method

.method public static formatNumber(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 721
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->detectCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 723
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getAsYouTypeFormatter(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    move-result-object p1

    .line 724
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 725
    array-length v1, v0

    .line 726
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 727
    aget-char p0, v0, v2

    invoke-virtual {p1, p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigit(C)Ljava/lang/String;

    move-result-object p0

    .line 726
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 729
    :cond_0
    return-object p0
.end method

.method public static getCpHandle(Ljava/lang/String;)J
    .locals 6

    .line 355
    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgHandleAsLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 356
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapUtils;->D:Z

    const-string v3, "BluetoothMapUtils"

    if-eqz v2, :cond_0

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-> MAP handle:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    const-wide v4, 0xffffffffffffffL

    and-long/2addr v0, v4

    .line 361
    sget-boolean p0, Lcom/android/bluetooth/map/BluetoothMapUtils;->D:Z

    if-eqz p0, :cond_1

    .line 362
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "->CP handle:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_1
    return-wide v0
.end method

.method static getDateTimeString(J)Ljava/lang/String;
    .locals 4

    .line 686
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->mPeerSupportUtcTimeStamp:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmssZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 687
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 688
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 689
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 690
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapUtils;->V:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDateTimeString  timestamp :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " time:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 690
    const-string p1, "BluetoothMapUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_1
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLongAsString(J)Ljava/lang/String;
    .locals 7

    .line 162
    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 163
    const-wide/16 v1, -0x1

    and-long v3, p0, v1

    long-to-int v3, v3

    .line 164
    const/16 v4, 0x20

    shr-long/2addr p0, v4

    and-long/2addr p0, v1

    long-to-int p0, p0

    .line 166
    const/4 p1, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge p1, v1, :cond_2

    .line 167
    and-int/lit8 v1, p0, 0xf

    .line 168
    const/16 v2, 0x30

    const/16 v4, 0x37

    const/16 v5, 0xa

    if-ge v1, v5, :cond_0

    move v6, v2

    goto :goto_1

    :cond_0
    move v6, v4

    :goto_1
    add-int/2addr v1, v6

    .line 169
    rsub-int/lit8 v6, p1, 0x7

    int-to-char v1, v1

    aput-char v1, v0, v6

    .line 170
    shr-int/lit8 p0, p0, 0x4

    .line 171
    and-int/lit8 v1, v3, 0xf

    .line 172
    if-ge v1, v5, :cond_1

    goto :goto_2

    :cond_1
    move v2, v4

    :goto_2
    add-int/2addr v1, v2

    .line 173
    rsub-int/lit8 v2, p1, 0xf

    int-to-char v1, v1

    aput-char v1, v0, v2

    .line 174
    shr-int/lit8 v3, v3, 0x4

    .line 166
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 176
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static getLongFromString(Ljava/lang/String;)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 192
    if-eqz p0, :cond_b

    .line 195
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->V:Z

    const-string v1, "BluetoothMapUtils"

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLongFromString(): converting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 200
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapUtils;->V:Z

    if-eqz v2, :cond_1

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  byte values: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_1
    nop

    .line 205
    array-length v2, p0

    .line 206
    const-wide/16 v3, 0x0

    .line 207
    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-eq v6, v2, :cond_9

    .line 208
    aget-byte v8, p0, v6

    .line 209
    const/16 v9, 0x30

    if-lt v8, v9, :cond_2

    const/16 v9, 0x39

    if-gt v8, v9, :cond_2

    .line 210
    add-int/lit8 v8, v8, -0x30

    int-to-byte v8, v8

    goto :goto_1

    .line 211
    :cond_2
    const/16 v9, 0x41

    if-lt v8, v9, :cond_3

    const/16 v9, 0x46

    if-gt v8, v9, :cond_3

    .line 212
    add-int/lit8 v8, v8, -0x37

    int-to-byte v8, v8

    goto :goto_1

    .line 213
    :cond_3
    const/16 v9, 0x61

    if-lt v8, v9, :cond_5

    const/16 v9, 0x66

    if-gt v8, v9, :cond_5

    .line 214
    add-int/lit8 v8, v8, -0x57

    int-to-byte v8, v8

    .line 224
    :goto_1
    const/4 v9, 0x4

    shl-long/2addr v3, v9

    .line 225
    int-to-long v8, v8

    add-long/2addr v3, v8

    .line 226
    add-int/lit8 v7, v7, 0x1

    .line 227
    const/16 v8, 0x10

    if-gt v7, v8, :cond_4

    goto :goto_3

    .line 228
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "String to large - count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 215
    :cond_5
    const/16 v9, 0x20

    if-le v8, v9, :cond_7

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_6

    goto :goto_2

    .line 222
    :cond_6
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid character:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 216
    :cond_7
    :goto_2
    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapUtils;->V:Z

    if-eqz v9, :cond_8

    .line 217
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping c = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x1

    new-array v11, v11, [B

    aput-byte v8, v11, v5

    invoke-direct {v10, v11, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_8
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 231
    :cond_9
    sget-boolean p0, Lcom/android/bluetooth/map/BluetoothMapUtils;->V:Z

    if-eqz p0, :cond_a

    .line 232
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  length: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_a
    return-wide v3

    .line 193
    :cond_b
    const/4 p0, 0x0

    throw p0
.end method

.method public static getLongLongAsString(JJ)Ljava/lang/String;
    .locals 10

    .line 240
    const/16 v0, 0x20

    new-array v1, v0, [C

    .line 241
    const-wide/16 v2, -0x1

    and-long v4, p0, v2

    long-to-int v4, v4

    .line 242
    shr-long/2addr p0, v0

    and-long/2addr p0, v2

    long-to-int p0, p0

    .line 243
    and-long v5, p2, v2

    long-to-int p1, v5

    .line 244
    shr-long/2addr p2, v0

    and-long/2addr p2, v2

    long-to-int p2, p2

    .line 247
    const/4 p3, 0x0

    move v2, p3

    :goto_0
    const/16 v3, 0x8

    const/16 v5, 0x30

    if-ge v2, v3, :cond_4

    .line 248
    and-int/lit8 v3, p0, 0xf

    .line 249
    const/16 v6, 0x37

    const/16 v7, 0xa

    if-ge v3, v7, :cond_0

    move v8, v5

    goto :goto_1

    :cond_0
    move v8, v6

    :goto_1
    add-int/2addr v3, v8

    .line 250
    and-int/lit8 v8, p2, 0xf

    .line 251
    if-ge v8, v7, :cond_1

    move v9, v5

    goto :goto_2

    :cond_1
    move v9, v6

    :goto_2
    add-int/2addr v8, v9

    .line 252
    rsub-int/lit8 v9, v2, 0x17

    int-to-char v3, v3

    aput-char v3, v1, v9

    .line 253
    rsub-int/lit8 v3, v2, 0x7

    int-to-char v8, v8

    aput-char v8, v1, v3

    .line 254
    shr-int/lit8 p0, p0, 0x4

    .line 255
    shr-int/lit8 p2, p2, 0x4

    .line 256
    and-int/lit8 v3, v4, 0xf

    .line 257
    if-ge v3, v7, :cond_2

    move v8, v5

    goto :goto_3

    :cond_2
    move v8, v6

    :goto_3
    add-int/2addr v3, v8

    .line 258
    and-int/lit8 v8, p1, 0xf

    .line 259
    if-ge v8, v7, :cond_3

    goto :goto_4

    :cond_3
    move v5, v6

    :goto_4
    add-int/2addr v8, v5

    .line 260
    rsub-int/lit8 v5, v2, 0x1f

    int-to-char v3, v3

    aput-char v3, v1, v5

    .line 261
    rsub-int/lit8 v3, v2, 0xf

    int-to-char v5, v8

    aput-char v5, v1, v3

    .line 262
    shr-int/lit8 v4, v4, 0x4

    .line 263
    shr-int/lit8 p1, p1, 0x4

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    :cond_4
    nop

    :goto_5
    if-ge p3, v0, :cond_6

    .line 267
    aget-char p0, v1, p3

    if-eq p0, v5, :cond_5

    .line 268
    goto :goto_6

    .line 266
    :cond_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 271
    :cond_6
    :goto_6
    new-instance p0, Ljava/lang/String;

    rsub-int/lit8 p1, p3, 0x20

    invoke-direct {p0, v1, p3, p1}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public static getMapConvoHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;
    .locals 2

    .line 322
    nop

    .line 323
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$1;->$SwitchMap$com$android$bluetooth$map$BluetoothMapUtils$TYPE:[I

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Message type not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 331
    :cond_1
    :goto_0
    const-wide/16 v0, 0x2

    invoke-static {p0, p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongLongAsString(JJ)Ljava/lang/String;

    move-result-object p0

    .line 332
    goto :goto_1

    .line 327
    :cond_2
    const-wide/16 v0, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongLongAsString(JJ)Ljava/lang/String;

    move-result-object p0

    .line 328
    nop

    .line 336
    :goto_1
    return-object p0
.end method

.method public static getMapHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;
    .locals 2

    .line 282
    nop

    .line 284
    if-eqz p2, :cond_0

    .line 285
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$1;->$SwitchMap$com$android$bluetooth$map$BluetoothMapUtils$TYPE:[I

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    .line 304
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Message type not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 302
    :pswitch_0
    goto :goto_0

    .line 299
    :pswitch_1
    const-wide/high16 v0, 0x1000000000000000L

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object p0

    .line 300
    goto :goto_1

    .line 296
    :pswitch_2
    const-wide/high16 v0, 0x200000000000000L

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object p0

    .line 297
    goto :goto_1

    .line 293
    :pswitch_3
    const-wide/high16 v0, 0x800000000000000L

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object p0

    .line 294
    goto :goto_1

    .line 290
    :pswitch_4
    const-wide/high16 v0, 0x400000000000000L

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object p0

    .line 291
    goto :goto_1

    .line 287
    :pswitch_5
    const-wide/high16 v0, 0x100000000000000L

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object p0

    .line 288
    goto :goto_1

    .line 307
    :cond_0
    sget-boolean p0, Lcom/android/bluetooth/map/BluetoothMapUtils;->D:Z

    if-eqz p0, :cond_1

    .line 308
    const-string p0, "BluetoothMapUtils"

    const-string p1, " Invalid messageType input"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_1
    :goto_0
    const-string p0, "-1"

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getMsgHandleAsLong(Ljava/lang/String;)J
    .locals 2

    .line 346
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMsgTypeFromHandle(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 6

    .line 374
    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgHandleAsLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 376
    const-wide/high16 v2, 0x100000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_0

    .line 377
    sget-object p0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object p0

    .line 379
    :cond_0
    const-wide/high16 v2, 0x200000000000000L

    and-long/2addr v2, v0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_1

    .line 380
    sget-object p0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object p0

    .line 382
    :cond_1
    const-wide/high16 v2, 0x400000000000000L

    and-long/2addr v2, v0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_2

    .line 383
    sget-object p0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object p0

    .line 385
    :cond_2
    const-wide/high16 v2, 0x800000000000000L

    and-long/2addr v2, v0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_3

    .line 386
    sget-object p0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object p0

    .line 388
    :cond_3
    const-wide/high16 v2, 0x1000000000000000L

    and-long/2addr v0, v2

    cmp-long p0, v0, v4

    if-eqz p0, :cond_4

    .line 389
    sget-object p0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object p0

    .line 392
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message type not found in handle string."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isLegalArgument(Ljava/lang/String;)Z
    .locals 7

    .line 734
    const-string v0, ""

    const-string v1, "BluetoothMapUtils"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 735
    return v3

    .line 738
    :cond_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 739
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 741
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 742
    const/4 v2, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 743
    const-string v2, "test"

    invoke-interface {v4, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 744
    const-string v2, "str"

    invoke-interface {v4, v0, v2, p0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    nop

    .line 752
    return v3

    .line 748
    :catch_0
    move-exception v0

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[islegalArgument] IOException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return v5

    .line 745
    :catch_1
    move-exception v0

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[islegalArgument] IllegalArgumentException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    return v5
.end method

.method public static printCursor(Landroid/database/Cursor;)V
    .locals 7

    .line 133
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->D:Z

    if-eqz v0, :cond_3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    const-string v1, "\nprintCursor:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 137
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "date"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "\n"

    const-string v4, " : "

    const-string v5, "  "

    if-nez v2, :cond_1

    .line 138
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    .line 139
    const-string v6, "last_thread_activity"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 140
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    .line 141
    const-string v6, "last_active"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 142
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    const-string v6, "last_online"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 150
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 144
    :cond_1
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothMapUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_3
    return-void
.end method

.method public static quotedPrintableToUtf8(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 16

    .line 525
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [B

    .line 526
    nop

    .line 528
    :try_start_0
    const-string v0, "US-ASCII"

    move-object/from16 v3, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    goto :goto_0

    .line 529
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 533
    :goto_0
    if-nez v0, :cond_0

    .line 534
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 537
    :cond_0
    array-length v3, v0

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    .line 542
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    const-string v8, "BluetoothMapUtils"

    if-ge v6, v3, :cond_13

    .line 543
    aget-byte v9, v0, v6

    .line 544
    const/16 v10, 0x3d

    const/4 v11, 0x1

    if-ne v9, v10, :cond_12

    .line 545
    add-int/lit8 v6, v6, 0x1

    aget-byte v10, v0, v6

    .line 546
    add-int/2addr v6, v11

    aget-byte v12, v0, v6

    .line 547
    const/16 v13, 0xd

    const/16 v14, 0xa

    if-ne v10, v13, :cond_1

    if-ne v12, v14, :cond_1

    .line 548
    goto/16 :goto_4

    .line 550
    :cond_1
    const/16 v13, 0x66

    const/16 v15, 0x46

    const/16 v2, 0x61

    const/16 v14, 0x39

    const/16 v11, 0x41

    const/16 v5, 0x30

    if-lt v10, v5, :cond_2

    if-le v10, v14, :cond_4

    :cond_2
    if-lt v10, v11, :cond_3

    if-le v10, v15, :cond_4

    :cond_3
    if-lt v10, v2, :cond_11

    if-gt v10, v13, :cond_11

    :cond_4
    if-lt v12, v5, :cond_5

    if-le v12, v14, :cond_7

    :cond_5
    if-lt v12, v11, :cond_6

    if-le v12, v15, :cond_7

    :cond_6
    if-lt v12, v2, :cond_11

    if-gt v12, v13, :cond_11

    .line 553
    :cond_7
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapUtils;->V:Z

    if-eqz v2, :cond_8

    .line 554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found hex number: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v5, v11

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v5, v11

    const-string v9, "%c%c"

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_8
    if-gt v10, v14, :cond_9

    .line 557
    add-int/lit8 v10, v10, -0x30

    int-to-byte v10, v10

    goto :goto_2

    .line 558
    :cond_9
    if-gt v10, v15, :cond_a

    .line 559
    add-int/lit8 v10, v10, -0x41

    const/16 v2, 0xa

    add-int/2addr v10, v2

    int-to-byte v10, v10

    goto :goto_2

    .line 560
    :cond_a
    const/16 v2, 0xa

    if-gt v10, v13, :cond_b

    .line 561
    add-int/lit8 v10, v10, -0x61

    add-int/2addr v10, v2

    int-to-byte v10, v10

    .line 564
    :cond_b
    :goto_2
    if-gt v12, v14, :cond_c

    .line 565
    add-int/lit8 v12, v12, -0x30

    int-to-byte v12, v12

    goto :goto_3

    .line 566
    :cond_c
    if-gt v12, v15, :cond_d

    .line 567
    add-int/lit8 v12, v12, -0x41

    const/16 v2, 0xa

    add-int/2addr v12, v2

    int-to-byte v12, v12

    goto :goto_3

    .line 568
    :cond_d
    const/16 v2, 0xa

    if-gt v12, v13, :cond_e

    .line 569
    add-int/lit8 v12, v12, -0x61

    add-int/2addr v12, v2

    int-to-byte v12, v12

    .line 572
    :cond_e
    :goto_3
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapUtils;->V:Z

    if-eqz v2, :cond_f

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resulting nibble values: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v4, [Ljava/lang/Object;

    .line 574
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v5, v11

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v5, v11

    const-string v9, "b1=%x b2=%x"

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 573
    invoke-static {v8, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_f
    add-int/lit8 v2, v7, 0x1

    shl-int/lit8 v5, v10, 0x4

    or-int/2addr v5, v12

    int-to-byte v5, v5

    aput-byte v5, v1, v7

    .line 578
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapUtils;->V:Z

    if-eqz v5, :cond_10

    .line 579
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resulting value: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/Object;

    add-int/lit8 v7, v2, -0x1

    aget-byte v7, v1, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const-string v7, "0x%2x"

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_10
    move v7, v2

    goto :goto_4

    .line 583
    :cond_11
    const-string v2, "Received wrongly quoted printable encoded text. Continuing at best effort..."

    invoke-static {v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    add-int/lit8 v2, v7, 0x1

    aput-byte v9, v1, v7

    .line 588
    add-int/lit8 v6, v6, -0x2

    .line 589
    move v7, v2

    goto :goto_4

    .line 591
    :cond_12
    add-int/lit8 v2, v7, 0x1

    aput-byte v9, v1, v7

    .line 592
    move v7, v2

    .line 542
    :goto_4
    const/4 v2, 0x1

    add-int/2addr v6, v2

    goto/16 :goto_1

    .line 598
    :cond_13
    :goto_5
    array-length v2, v0

    if-ge v6, v2, :cond_14

    .line 599
    add-int/lit8 v2, v7, 0x1

    add-int/lit8 v3, v6, 0x1

    aget-byte v4, v0, v6

    aput-byte v4, v1, v7

    move v7, v2

    move v6, v3

    goto :goto_5

    .line 602
    :cond_14
    nop

    .line 605
    const-string v2, "UTF-8"

    if-nez p1, :cond_15

    .line 606
    move-object v3, v2

    goto :goto_6

    .line 608
    :cond_15
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 610
    :try_start_1
    invoke-static {v3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v0, :cond_16

    .line 611
    move-object v3, v2

    .line 616
    :cond_16
    goto :goto_6

    .line 613
    :catch_1
    move-exception v0

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received unknown charset: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - using UTF-8."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    move-object v3, v2

    .line 619
    :goto_6
    :try_start_2
    new-instance v0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v7, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 627
    move-object v2, v0

    goto :goto_7

    .line 620
    :catch_2
    move-exception v0

    move-object v3, v0

    .line 623
    :try_start_3
    new-instance v0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v7, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 626
    move-object v2, v0

    goto :goto_7

    .line 624
    :catch_3
    move-exception v0

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "quotedPrintableToUtf8: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 628
    :goto_7
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static removeInvalidChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 756
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    return-object p0

    .line 760
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 761
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 762
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 764
    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    const v4, 0xd7ff

    if-le v3, v4, :cond_2

    :cond_1
    const v4, 0xe000

    if-lt v3, v4, :cond_3

    const v4, 0xfffd

    if-gt v3, v4, :cond_3

    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    move v4, v1

    .line 765
    :goto_1
    if-eqz v4, :cond_4

    .line 766
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 761
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 769
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 770
    return-object p0
.end method

.method static savePeerSupportUtcTimeStamp(I)V
    .locals 1

    .line 696
    const/high16 v0, 0x40000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    .line 698
    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/bluetooth/map/BluetoothMapUtils;->mPeerSupportUtcTimeStamp:Z

    goto :goto_0

    .line 700
    :cond_0
    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/bluetooth/map/BluetoothMapUtils;->mPeerSupportUtcTimeStamp:Z

    .line 702
    :goto_0
    sget-boolean p0, Lcom/android/bluetooth/map/BluetoothMapUtils;->V:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "savePeerSupportUtcTimeStamp "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->mPeerSupportUtcTimeStamp:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothMapUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_1
    return-void
.end method

.method public static stripEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 473
    nop

    .line 474
    const-string v0, "=?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "?="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 480
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 481
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 482
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 483
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 484
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 485
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Matching:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\nCharset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\nEncoding : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\nText: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BluetoothMapUtils"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const-string v6, "Q"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StripEncoding: Quoted Printable string : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    new-instance v1, Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->quotedPrintableToUtf8(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 492
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 493
    :cond_0
    const-string v6, "B"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 497
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StripEncoding: base64 string : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    new-instance v4, Ljava/lang/String;

    .line 499
    invoke-virtual {v5, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v4, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StripEncoding: decoded string : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :goto_1
    goto/16 :goto_0

    .line 505
    :catch_0
    move-exception v1

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stripEncoding: string not encoded as base64: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 503
    :catch_1
    move-exception v1

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stripEncoding: Unsupported charset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 509
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stripEncoding: Hit unknown encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 513
    :cond_2
    return-object p0
.end method

.method public static stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 406
    if-nez p0, :cond_0

    .line 407
    const-string p0, ""

    return-object p0

    .line 409
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 411
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_4

    .line 412
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 413
    const/16 v6, 0x20

    if-lt v5, v6, :cond_1

    const v6, 0xd7ff

    if-le v5, v6, :cond_2

    :cond_1
    const v6, 0xe000

    if-lt v5, v6, :cond_3

    const v6, 0xfffd

    if-gt v5, v6, :cond_3

    .line 414
    :cond_2
    add-int/lit8 v6, v4, 0x1

    aput-char v5, v0, v4

    move v4, v6

    .line 411
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 418
    :cond_4
    if-ne v3, v4, :cond_5

    .line 419
    return-object p0

    .line 421
    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public static truncateUtf8StringToBytearray(Ljava/lang/String;I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 435
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [B

    .line 437
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    nop

    .line 443
    if-le v0, p1, :cond_3

    .line 446
    add-int/lit8 p0, p1, -0x1

    aget-byte v0, v1, p0

    const/16 v2, 0xc0

    and-int/2addr v0, v2

    const/16 v4, 0x80

    if-ne v0, v4, :cond_2

    .line 447
    add-int/lit8 p1, p1, -0x2

    :goto_0
    if-ltz p1, :cond_1

    .line 448
    aget-byte p0, v1, p1

    and-int/2addr p0, v2

    if-ne p0, v2, :cond_0

    .line 451
    add-int/lit8 p0, p1, 0x1

    invoke-static {v1, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 452
    aput-byte v3, p0, p1

    .line 453
    move-object v1, p0

    goto :goto_1

    .line 447
    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_2

    .line 458
    :cond_2
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 459
    aput-byte v3, v1, p0

    .line 462
    :cond_3
    :goto_2
    return-object v1

    .line 438
    :catch_0
    move-exception p0

    .line 439
    const-string p1, "BluetoothMapUtils"

    const-string v0, "truncateUtf8StringToBytearray: getBytes exception "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    throw p0
.end method
