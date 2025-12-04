.class public Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;
.super Ljava/lang/Object;
.source "BipImageDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "avrcpcontroller.BipImageDescriptor"

.field private static final sVersion:Ljava/lang/String; = "1.0"


# instance fields
.field private mEncoding:Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

.field private mMaxSize:I

.field private mPixel:Lcom/android/bluetooth/avrcpcontroller/BipPixel;

.field private mSize:I

.field private mTransformation:Lcom/android/bluetooth/avrcpcontroller/BipTransformation;

.field private mVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mVersion:Ljava/lang/String;

    .line 159
    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mEncoding:Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    .line 164
    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mPixel:Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    .line 170
    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mTransformation:Lcom/android/bluetooth/avrcpcontroller/BipTransformation;

    .line 175
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mSize:I

    .line 182
    iput v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mMaxSize:I

    .line 185
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mVersion:Ljava/lang/String;

    .line 186
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$1;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mVersion:Ljava/lang/String;

    .line 159
    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mEncoding:Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    .line 164
    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mPixel:Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    .line 170
    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mTransformation:Lcom/android/bluetooth/avrcpcontroller/BipTransformation;

    .line 175
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mSize:I

    .line 182
    iput v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mMaxSize:I

    .line 189
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->parse(Ljava/io/InputStream;)V

    .line 190
    return-void
.end method

.method static synthetic access$102(Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;Lcom/android/bluetooth/avrcpcontroller/BipEncoding;)Lcom/android/bluetooth/avrcpcontroller/BipEncoding;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mEncoding:Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;Lcom/android/bluetooth/avrcpcontroller/BipPixel;)Lcom/android/bluetooth/avrcpcontroller/BipPixel;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mPixel:Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;Lcom/android/bluetooth/avrcpcontroller/BipTransformation;)Lcom/android/bluetooth/avrcpcontroller/BipTransformation;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mTransformation:Lcom/android/bluetooth/avrcpcontroller/BipTransformation;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mSize:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mMaxSize:I

    return p1
.end method

.method private static error(Ljava/lang/String;)V
    .locals 1

    .line 327
    const-string v0, "avrcpcontroller.BipImageDescriptor"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void
.end method

.method private parse(Ljava/io/InputStream;)V
    .locals 4

    .line 194
    const-string v0, "avrcpcontroller.BipImageDescriptor"

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 195
    const-string v2, "utf-8"

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 196
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    .line 197
    :goto_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    .line 198
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_1

    .line 200
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    .line 201
    const-string v2, "image-descriptor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 202
    const-string p1, "version"

    invoke-interface {v1, v3, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mVersion:Ljava/lang/String;

    goto :goto_1

    .line 203
    :cond_1
    const-string v2, "image"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 204
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    const-string v2, "encoding"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mEncoding:Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    .line 205
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    const-string v2, "pixel"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mPixel:Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    .line 206
    const-string p1, "size"

    invoke-interface {v1, v3, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mSize:I

    .line 207
    const-string p1, "maxsize"

    invoke-interface {v1, v3, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mMaxSize:I

    .line 208
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;

    const-string v2, "transformation"

    .line 209
    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mTransformation:Lcom/android/bluetooth/avrcpcontroller/BipTransformation;

    goto :goto_1

    .line 211
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized tag in x-bt/img-Description object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    nop

    .line 217
    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :cond_3
    return-void

    .line 222
    :catch_0
    move-exception p1

    .line 223
    const-string v1, "I/O error when parsing XML"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 220
    :catch_1
    move-exception p1

    .line 221
    const-string v1, "XML parser error when parsing XML"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    nop

    .line 225
    :goto_2
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/ParseException;

    const-string v0, "Failed to parse image-descriptor from stream"

    invoke-direct {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static parseInt(Ljava/lang/String;)I
    .locals 3

    .line 229
    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 231
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 232
    :catch_0
    move-exception v1

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->error(Ljava/lang/String;)V

    .line 235
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 274
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 275
    :cond_0
    instance-of v1, p1, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 277
    :cond_1
    check-cast p1, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;

    .line 278
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->getEncoding()Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->getEncoding()Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    move-result-object v3

    if-ne v1, v3, :cond_2

    .line 279
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->getPixel()Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->getPixel()Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    move-result-object v3

    if-ne v1, v3, :cond_2

    .line 280
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->getTransformation()Lcom/android/bluetooth/avrcpcontroller/BipTransformation;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->getTransformation()Lcom/android/bluetooth/avrcpcontroller/BipTransformation;

    move-result-object v3

    if-ne v1, v3, :cond_2

    .line 281
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->getSize()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->getSize()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 282
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->getMaxSize()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->getMaxSize()I

    move-result v1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 278
    :goto_0
    return v0
.end method

.method public getEncoding()Lcom/android/bluetooth/avrcpcontroller/BipEncoding;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mEncoding:Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    return-object v0
.end method

.method public getMaxSize()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mMaxSize:I

    return v0
.end method

.method public getPixel()Lcom/android/bluetooth/avrcpcontroller/BipPixel;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mPixel:Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 251
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mSize:I

    return v0
.end method

.method public getTransformation()Lcom/android/bluetooth/avrcpcontroller/BipTransformation;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mTransformation:Lcom/android/bluetooth/avrcpcontroller/BipTransformation;

    return-object v0
.end method

.method public serialize()[B
    .locals 3

    .line 264
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    return-object v1

    .line 266
    :cond_0
    :goto_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 287
    const-string v0, "image"

    const-string v1, "image-descriptor"

    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mEncoding:Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mPixel:Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 292
    :cond_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 293
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 295
    :try_start_0
    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 296
    const-string v5, "UTF-8"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 297
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 298
    invoke-interface {v4, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 299
    const-string v5, "version"

    const-string v6, "1.0"

    invoke-interface {v4, v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 300
    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 301
    const-string v5, "encoding"

    iget-object v6, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mEncoding:Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    invoke-virtual {v6}, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 302
    const-string v5, "pixel"

    iget-object v6, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mPixel:Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    invoke-virtual {v6}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    iget v5, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mSize:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 304
    const-string v5, "size"

    iget v7, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mSize:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 306
    :cond_1
    iget v5, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mMaxSize:I

    if-eq v5, v6, :cond_2

    .line 307
    const-string v5, "maxsize"

    iget v6, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mMaxSize:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 309
    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mTransformation:Lcom/android/bluetooth/avrcpcontroller/BipTransformation;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mTransformation:Lcom/android/bluetooth/avrcpcontroller/BipTransformation;

    invoke-virtual {v5}, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->supportsAny()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 310
    const-string v5, "transformation"

    iget-object v6, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mTransformation:Lcom/android/bluetooth/avrcpcontroller/BipTransformation;

    invoke-virtual {v6}, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 312
    :cond_3
    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 313
    invoke-interface {v4, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 314
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 315
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 318
    :catch_1
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :catch_2
    move-exception v0

    .line 317
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->error(Ljava/lang/String;)V

    .line 322
    :goto_0
    nop

    .line 323
    :goto_1
    return-object v3

    .line 288
    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing required fields [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mEncoding:Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    const-string v2, ""

    if-nez v1, :cond_5

    const-string v1, "encoding "

    goto :goto_3

    :cond_5
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->mPixel:Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    if-nez v1, :cond_6

    const-string v2, "pixel "

    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->error(Ljava/lang/String;)V

    .line 290
    return-object v3
.end method
