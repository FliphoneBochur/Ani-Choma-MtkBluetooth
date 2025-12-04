.class public Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;
.super Ljava/lang/Object;
.source "BipImageProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/avrcpcontroller/BipImageProperties$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "avrcpcontroller.BipImageProperties"

.field private static final sVersion:Ljava/lang/String; = "1.0"


# instance fields
.field private mAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;",
            ">;"
        }
    .end annotation
.end field

.field private mFriendlyName:Ljava/lang/String;

.field private mImageHandle:Ljava/lang/String;

.field private mNativeFormats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;",
            ">;"
        }
    .end annotation
.end field

.field private mVariantFormats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mImageHandle:Ljava/lang/String;

    .line 138
    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mVersion:Ljava/lang/String;

    .line 143
    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mFriendlyName:Ljava/lang/String;

    .line 153
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mVersion:Ljava/lang/String;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mNativeFormats:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mVariantFormats:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mAttachments:Ljava/util/ArrayList;

    .line 157
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/avrcpcontroller/BipImageProperties$1;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mImageHandle:Ljava/lang/String;

    .line 138
    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mVersion:Ljava/lang/String;

    .line 143
    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mFriendlyName:Ljava/lang/String;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mNativeFormats:Ljava/util/ArrayList;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mVariantFormats:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mAttachments:Ljava/util/ArrayList;

    .line 163
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->parse(Ljava/io/InputStream;)V

    .line 164
    return-void
.end method

.method static synthetic access$102(Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mImageHandle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mFriendlyName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->addNativeFormat(Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->addVariantFormat(Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->addAttachment(Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;)V

    return-void
.end method

.method private addAttachment(Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;)V
    .locals 1

    .line 258
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    return-void
.end method

.method private addNativeFormat(Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;)V
    .locals 3

    .line 240
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mNativeFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    return-void

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Format type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->getType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' but expected \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addVariantFormat(Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;)V
    .locals 4

    .line 249
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mVariantFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    return-void

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Format type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->getType()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' but expected \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static error(Ljava/lang/String;)V
    .locals 1

    .line 373
    const-string v0, "avrcpcontroller.BipImageProperties"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return-void
.end method

.method private static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 377
    const-string v0, "avrcpcontroller.BipImageProperties"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    return-void
.end method

.method private parse(Ljava/io/InputStream;)V
    .locals 11

    .line 168
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 169
    const-string v1, "utf-8"

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 170
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    .line 171
    :goto_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    .line 172
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto/16 :goto_1

    .line 174
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    .line 175
    const-string v1, "image-properties"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 176
    const-string p1, "version"

    invoke-interface {v0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mVersion:Ljava/lang/String;

    .line 177
    const-string p1, "handle"

    invoke-interface {v0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mImageHandle:Ljava/lang/String;

    .line 178
    const-string p1, "friendly-name"

    invoke-interface {v0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mFriendlyName:Ljava/lang/String;

    goto/16 :goto_1

    .line 179
    :cond_1
    const-string v1, "native"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "size"

    const-string v4, "pixel"

    const-string v5, "encoding"

    if-eqz v1, :cond_2

    .line 180
    :try_start_1
    invoke-interface {v0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-static {p1, v1, v2}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->parseNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->addNativeFormat(Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;)V

    .line 184
    goto :goto_1

    :cond_2
    const-string v1, "variant"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    invoke-interface {v0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    const-string v3, "maxsize"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    const-string v4, "transformation"

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    nop

    .line 190
    invoke-static {p1, v1, v3, v2}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->parseVariant(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;

    move-result-object p1

    .line 189
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->addVariantFormat(Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;)V

    .line 191
    goto :goto_1

    :cond_3
    const-string v1, "attachment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 192
    const-string p1, "content-type"

    invoke-interface {v0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 193
    const-string p1, "name"

    invoke-interface {v0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 194
    const-string p1, "charset"

    invoke-interface {v0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 195
    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 196
    const-string p1, "created"

    invoke-interface {v0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 197
    const-string p1, "modified"

    invoke-interface {v0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 198
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->addAttachment(Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;)V

    .line 201
    goto :goto_1

    .line 202
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag in x-bt/img-properties object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->warn(Ljava/lang/String;)V

    .line 204
    nop

    .line 208
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 210
    :cond_5
    return-void

    .line 213
    :catch_0
    move-exception p1

    .line 214
    const-string v0, "I/O error when parsing XML"

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 211
    :catch_1
    move-exception p1

    .line 212
    const-string v0, "XML parser error when parsing XML"

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    nop

    .line 216
    :goto_2
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/ParseException;

    const-string v0, "Failed to parse image-properties from stream"

    invoke-direct {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static warn(Ljava/lang/String;)V
    .locals 1

    .line 369
    const-string v0, "avrcpcontroller.BipImageProperties"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void
.end method


# virtual methods
.method public getAttachments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mAttachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getImageHandle()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mImageHandle:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeFormats()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;",
            ">;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mNativeFormats:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVariantFormats()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mVariantFormats:Ljava/util/ArrayList;

    return-object v0
.end method

.method public serialize()[B
    .locals 3

    .line 360
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    return-object v1

    .line 362
    :cond_0
    :goto_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    .line 264
    move-object/from16 v0, p0

    const-string v1, "attachment"

    const-string v2, "variant"

    const-string v3, "native"

    const-string v4, "image-properties"

    const-string v5, "Falied to serialize ImageProperties"

    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 265
    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 267
    const/4 v8, 0x0

    :try_start_0
    invoke-interface {v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 268
    const-string v9, "UTF-8"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v7, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 269
    const-string v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 270
    invoke-interface {v7, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 271
    const-string v9, "version"

    iget-object v10, v0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mVersion:Ljava/lang/String;

    invoke-interface {v7, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 272
    const-string v9, "handle"

    iget-object v10, v0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mImageHandle:Ljava/lang/String;

    invoke-interface {v7, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 274
    iget-object v9, v0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mNativeFormats:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, "size"

    const-string v12, "pixel"

    const-string v13, "encoding"

    const-string v14, " is invalid."

    if-eqz v10, :cond_3

    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;

    .line 275
    invoke-virtual {v10}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->getEncoding()Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    move-result-object v15

    .line 276
    invoke-virtual {v10}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->getPixel()Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    move-result-object v16

    .line 277
    invoke-virtual {v10}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->getSize()I

    move-result v17

    .line 278
    if-eqz v15, :cond_2

    if-nez v16, :cond_0

    goto :goto_1

    .line 282
    :cond_0
    invoke-interface {v7, v8, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 283
    invoke-virtual {v15}, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v13, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 284
    invoke-virtual/range {v16 .. v16}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 285
    if-ltz v17, :cond_1

    .line 286
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 288
    :cond_1
    invoke-interface {v7, v8, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 289
    goto :goto_0

    .line 279
    :cond_2
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Native format "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->error(Ljava/lang/String;)V

    .line 280
    goto :goto_0

    .line 291
    :cond_3
    iget-object v3, v0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mVariantFormats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;

    .line 292
    invoke-virtual {v9}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->getEncoding()Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    move-result-object v10

    .line 293
    invoke-virtual {v9}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->getPixel()Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    move-result-object v15

    .line 294
    invoke-virtual {v9}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->getMaxSize()I

    move-result v16

    .line 295
    invoke-virtual {v9}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->getTransformation()Lcom/android/bluetooth/avrcpcontroller/BipTransformation;

    move-result-object v17

    .line 296
    if-eqz v10, :cond_7

    if-nez v15, :cond_4

    goto :goto_3

    .line 300
    :cond_4
    invoke-interface {v7, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 301
    invoke-virtual {v10}, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v13, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 302
    invoke-virtual {v15}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v12, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    if-ltz v16, :cond_5

    .line 304
    const-string v9, "maxsize"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 306
    :cond_5
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->supportsAny()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 307
    const-string v9, "transformation"

    invoke-virtual/range {v17 .. v17}, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 309
    :cond_6
    invoke-interface {v7, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 310
    goto :goto_2

    .line 297
    :cond_7
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Variant format "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->error(Ljava/lang/String;)V

    .line 298
    goto :goto_2

    .line 312
    :cond_8
    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;

    .line 313
    invoke-virtual {v2}, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 314
    invoke-virtual {v2}, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->getCharset()Ljava/lang/String;

    move-result-object v9

    .line 315
    invoke-virtual {v2}, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->getName()Ljava/lang/String;

    move-result-object v10

    .line 316
    invoke-virtual {v2}, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->getSize()I

    move-result v12

    .line 317
    invoke-virtual {v2}, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->getCreatedDate()Lcom/android/bluetooth/avrcpcontroller/BipDateTime;

    move-result-object v13

    .line 318
    invoke-virtual {v2}, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->getModifiedDate()Lcom/android/bluetooth/avrcpcontroller/BipDateTime;

    move-result-object v15

    .line 319
    if-eqz v3, :cond_e

    if-nez v10, :cond_9

    goto :goto_5

    .line 323
    :cond_9
    invoke-interface {v7, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 324
    const-string v2, "content-type"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v8, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 325
    if-eqz v9, :cond_a

    .line 326
    const-string v2, "charset"

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v8, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 328
    :cond_a
    const-string v2, "name"

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v8, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 329
    if-ltz v12, :cond_b

    .line 330
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v8, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 332
    :cond_b
    if-eqz v13, :cond_c

    .line 333
    const-string v2, "created"

    invoke-virtual {v13}, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v8, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    :cond_c
    if-eqz v15, :cond_d

    .line 336
    const-string v2, "modified"

    invoke-virtual {v15}, Lcom/android/bluetooth/avrcpcontroller/BipDateTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v8, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 338
    :cond_d
    invoke-interface {v7, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 339
    goto :goto_4

    .line 320
    :cond_e
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attachment format "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->error(Ljava/lang/String;)V

    .line 321
    goto/16 :goto_4

    .line 341
    :cond_f
    invoke-interface {v7, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 342
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 343
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    invoke-static {v5, v0}, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 346
    :catch_1
    move-exception v0

    .line 347
    invoke-static {v5, v0}, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 344
    :catch_2
    move-exception v0

    .line 345
    invoke-static {v5, v0}, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 350
    :goto_6
    nop

    .line 351
    :goto_7
    return-object v8
.end method
