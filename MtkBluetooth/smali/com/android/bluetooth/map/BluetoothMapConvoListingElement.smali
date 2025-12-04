.class public Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
.super Ljava/lang/Object;
.source "BluetoothMapConvoListingElement.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final D:Z

.field private static final TAG:Ljava/lang/String; = "BluetoothMapConvoListingElement"

.field private static final V:Z

.field private static final XML_ATT_ID:Ljava/lang/String; = "id"

.field private static final XML_ATT_LAST_ACTIVITY:Ljava/lang/String; = "last_activity"

.field private static final XML_ATT_NAME:Ljava/lang/String; = "name"

.field private static final XML_ATT_READ:Ljava/lang/String; = "readstatus"

.field private static final XML_ATT_SUMMARY:Ljava/lang/String; = "summary"

.field private static final XML_ATT_VERSION_COUNTER:Ljava/lang/String; = "version_counter"

.field public static final XML_TAG_CONVERSATION:Ljava/lang/String; = "conversation"


# instance fields
.field private mContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;"
        }
    .end annotation
.end field

.field private mCursorIndex:I

.field private mId:Lcom/android/bluetooth/SignedLongLong;

.field private mLastActivity:J

.field private mName:Ljava/lang/String;

.field private mRead:Z

.field private mReportRead:Z

.field private mSmsMmsContacts:Ljava/lang/String;

.field private mSummary:Ljava/lang/String;

.field private mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field private mVersionCounter:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->D:Z

    .line 47
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->V:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mId:Lcom/android/bluetooth/SignedLongLong;

    .line 50
    const-string v1, ""

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    .line 51
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    .line 52
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mRead:Z

    .line 53
    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mReportRead:Z

    .line 55
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mVersionCounter:J

    .line 56
    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mCursorIndex:I

    .line 57
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 58
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSummary:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSmsMmsContacts:Ljava/lang/String;

    return-void
.end method

.method public static createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 304
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;-><init>()V

    .line 305
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 307
    const/4 v2, 0x0

    :goto_0
    const-string v3, "BluetoothMapConvoListingElement"

    if-ge v2, v1, :cond_7

    .line 308
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 309
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 310
    const-string v6, "id"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 311
    invoke-static {v5}, Lcom/android/bluetooth/SignedLongLong;->fromString(Ljava/lang/String;)Lcom/android/bluetooth/SignedLongLong;

    move-result-object v3

    iput-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mId:Lcom/android/bluetooth/SignedLongLong;

    goto :goto_1

    .line 312
    :cond_0
    const-string v6, "name"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 313
    iput-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    goto :goto_1

    .line 314
    :cond_1
    const-string v6, "last_activity"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 315
    invoke-virtual {v0, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(Ljava/lang/String;)V

    goto :goto_1

    .line 316
    :cond_2
    const-string v6, "readstatus"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 317
    invoke-direct {v0, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(Ljava/lang/String;)V

    goto :goto_1

    .line 318
    :cond_3
    const-string v6, "version_counter"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 319
    invoke-direct {v0, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setVersionCounter(Ljava/lang/String;)V

    goto :goto_1

    .line 320
    :cond_4
    const-string v6, "summary"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 321
    invoke-virtual {v0, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setSummary(Ljava/lang/String;)V

    goto :goto_1

    .line 323
    :cond_5
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->D:Z

    if-eqz v4, :cond_6

    .line 324
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown XML attribute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 330
    :cond_7
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    .line 333
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_8

    .line 334
    goto :goto_2

    .line 337
    :cond_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 338
    const-string v2, "convocontact"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 339
    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->addContact(Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;)V

    .line 347
    goto :goto_2

    .line 341
    :cond_9
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->D:Z

    if-eqz v2, :cond_a

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown XML tag: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_a
    invoke-static {p0}, Lcom/android/bluetooth/Utils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 345
    goto :goto_2

    .line 352
    :cond_b
    return-object v0
.end method

.method private getSummary()Ljava/lang/String;
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 229
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSummary:Ljava/lang/String;

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->truncateUtf8StringToBytearray(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 231
    :catch_0
    move-exception v0

    .line 233
    const-string v1, "BluetoothMapConvoListingElement"

    const-string v2, "Missing UTF-8 support on platform"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private setRead(Ljava/lang/String;)V
    .locals 1

    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "yes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 189
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mRead:Z

    goto :goto_0

    .line 191
    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mRead:Z

    .line 193
    :goto_0
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mReportRead:Z

    .line 194
    return-void
.end method

.method private setVersionCounter(Ljava/lang/String;)V
    .locals 4

    .line 90
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->D:Z

    const-string v1, "BluetoothMapConvoListingElement"

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVersionCounter: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mVersionCounter:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to parse XML versionCounter:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mVersionCounter:J

    .line 99
    :goto_0
    return-void
.end method


# virtual methods
.method public addContact(Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method public compareTo(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)I
    .locals 4

    .line 249
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    iget-wide v2, p1, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 250
    const/4 p1, 0x1

    return p1

    .line 251
    :cond_0
    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 252
    const/4 p1, -0x1

    return p1

    .line 254
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 35
    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->compareTo(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)I

    move-result p1

    return p1
.end method

.method public encode(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    const/4 v0, 0x0

    const-string v1, "conversation"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 266
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mId:Lcom/android/bluetooth/SignedLongLong;

    invoke-virtual {v2}, Lcom/android/bluetooth/SignedLongLong;->toHexString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 267
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 268
    nop

    .line 269
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 268
    const-string v3, "name"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 271
    :cond_0
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getLastActivityString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "last_activity"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 275
    :cond_1
    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mReportRead:Z

    if-eqz v2, :cond_2

    .line 276
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getRead()Ljava/lang/String;

    move-result-object v2

    const-string v3, "readstatus"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 278
    :cond_2
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mVersionCounter:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 279
    nop

    .line 280
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getVersionCounter()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 279
    const-string v3, "version_counter"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 282
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSummary:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 283
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getSummary()Ljava/lang/String;

    move-result-object v2

    const-string v3, "summary"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 285
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 286
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    .line 287
    invoke-virtual {v3, p1}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->encode(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 288
    goto :goto_0

    .line 290
    :cond_5
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 292
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 357
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 358
    return v0

    .line 360
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 361
    return v1

    .line 363
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 364
    return v1

    .line 366
    :cond_2
    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    .line 367
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    if-nez v2, :cond_3

    .line 368
    iget-object v2, p1, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 369
    return v1

    .line 371
    :cond_3
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 372
    return v1

    .line 383
    :cond_4
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    iget-wide v4, p1, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 384
    return v1

    .line 386
    :cond_5
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 387
    iget-object v2, p1, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 388
    return v1

    .line 390
    :cond_6
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 391
    return v1

    .line 393
    :cond_7
    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mRead:Z

    iget-boolean p1, p1, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mRead:Z

    if-eq v2, p1, :cond_8

    .line 394
    return v1

    .line 396
    :cond_8
    return v0
.end method

.method public getContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    return-object v0
.end method

.method public getConvoId()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mId:Lcom/android/bluetooth/SignedLongLong;

    invoke-virtual {v0}, Lcom/android/bluetooth/SignedLongLong;->toHexString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCpConvoId()J
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mId:Lcom/android/bluetooth/SignedLongLong;

    invoke-virtual {v0}, Lcom/android/bluetooth/SignedLongLong;->getLeastSignificantBits()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCursorIndex()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mCursorIndex:I

    return v0
.end method

.method public getFullSummary()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getLastActivity()J
    .locals 2

    .line 145
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    return-wide v0
.end method

.method public getLastActivityString()Ljava/lang/String;
    .locals 4

    .line 149
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 150
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 151
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRead()Ljava/lang/String;
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mReportRead:Z

    if-nez v0, :cond_0

    .line 170
    const-string v0, "UNKNOWN"

    return-object v0

    .line 172
    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mRead:Z

    if-eqz v0, :cond_1

    const-string v0, "READ"

    goto :goto_0

    :cond_1
    const-string v0, "UNREAD"

    :goto_0
    return-object v0
.end method

.method public getReadBool()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mRead:Z

    return v0
.end method

.method public getSmsMmsContacts()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSmsMmsContacts:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method

.method public getVersionCounter()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mVersionCounter:J

    return-wide v0
.end method

.method public incrementVersionCounter()V
    .locals 4

    .line 86
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mVersionCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mVersionCounter:J

    .line 87
    return-void
.end method

.method public removeContact(I)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 141
    return-void
.end method

.method public removeContact(Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public setContacts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;)V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    .line 126
    return-void
.end method

.method public setConvoId(JJ)V
    .locals 2

    .line 203
    new-instance v0, Lcom/android/bluetooth/SignedLongLong;

    invoke-direct {v0, p3, p4, p1, p2}, Lcom/android/bluetooth/SignedLongLong;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mId:Lcom/android/bluetooth/SignedLongLong;

    .line 204
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->D:Z

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConvoId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " type:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothMapConvoListingElement"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    return-void
.end method

.method public setCursorIndex(I)V
    .locals 2

    .line 68
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mCursorIndex:I

    .line 69
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->D:Z

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCursorIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothMapConvoListingElement"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    return-void
.end method

.method public setLastActivity(J)V
    .locals 2

    .line 155
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->D:Z

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLastActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMapConvoListingElement"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    .line 159
    return-void
.end method

.method public setLastActivity(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 165
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    .line 166
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .line 106
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->D:Z

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMapConvoListingElement"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setRead(ZZ)V
    .locals 2

    .line 180
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mRead:Z

    .line 181
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->D:Z

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRead: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothMapConvoListingElement"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    iput-boolean p2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mReportRead:Z

    .line 185
    return-void
.end method

.method public setSmsMmsContacts(Ljava/lang/String;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSmsMmsContacts:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSummary:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 118
    return-void
.end method

.method public setVersionCounter(J)V
    .locals 2

    .line 79
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->D:Z

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVersionCounter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMapConvoListingElement"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mVersionCounter:J

    .line 83
    return-void
.end method
