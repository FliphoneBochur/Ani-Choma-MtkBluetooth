.class public Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;
.super Ljava/lang/Object;
.source "BipImageFormat.java"


# static fields
.field public static final FORMAT_NATIVE:I = 0x0

.field public static final FORMAT_VARIANT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "avrcpcontroller.BipImageFormat"


# instance fields
.field private final mEncoding:Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

.field private final mFormatType:I

.field private final mMaxSize:I

.field private final mPixel:Lcom/android/bluetooth/avrcpcontroller/BipPixel;

.field private final mSize:I

.field private final mTransformation:Lcom/android/bluetooth/avrcpcontroller/BipTransformation;


# direct methods
.method private constructor <init>(ILcom/android/bluetooth/avrcpcontroller/BipEncoding;Lcom/android/bluetooth/avrcpcontroller/BipPixel;IILcom/android/bluetooth/avrcpcontroller/BipTransformation;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mFormatType:I

    .line 119
    const-string p1, "Encoding cannot be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    iput-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mEncoding:Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    .line 120
    const-string p1, "Pixel cannot be null"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    iput-object p3, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mPixel:Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    .line 121
    iput-object p6, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mTransformation:Lcom/android/bluetooth/avrcpcontroller/BipTransformation;

    .line 122
    iput p4, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mSize:I

    .line 123
    iput p5, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mMaxSize:I

    .line 124
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mFormatType:I

    .line 129
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    invoke-direct {p1, p2}, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mEncoding:Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    .line 130
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    invoke-direct {p1, p3}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mPixel:Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    .line 131
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;

    invoke-direct {p1, p6}, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mTransformation:Lcom/android/bluetooth/avrcpcontroller/BipTransformation;

    .line 132
    invoke-static {p4}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mSize:I

    .line 133
    invoke-static {p5}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mMaxSize:I

    .line 134
    return-void
.end method

.method public static createNative(Lcom/android/bluetooth/avrcpcontroller/BipEncoding;Lcom/android/bluetooth/avrcpcontroller/BipPixel;I)Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;
    .locals 8

    .line 64
    new-instance v7, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;

    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;-><init>(ILcom/android/bluetooth/avrcpcontroller/BipEncoding;Lcom/android/bluetooth/avrcpcontroller/BipPixel;IILcom/android/bluetooth/avrcpcontroller/BipTransformation;)V

    return-object v7
.end method

.method public static createVariant(Lcom/android/bluetooth/avrcpcontroller/BipEncoding;Lcom/android/bluetooth/avrcpcontroller/BipPixel;ILcom/android/bluetooth/avrcpcontroller/BipTransformation;)Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;
    .locals 8

    .line 72
    new-instance v7, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;

    const/4 v1, 0x1

    const/4 v4, -0x1

    move-object v0, v7

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;-><init>(ILcom/android/bluetooth/avrcpcontroller/BipEncoding;Lcom/android/bluetooth/avrcpcontroller/BipPixel;IILcom/android/bluetooth/avrcpcontroller/BipTransformation;)V

    return-object v7
.end method

.method private static error(Ljava/lang/String;)V
    .locals 1

    .line 226
    const-string v0, "avrcpcontroller.BipImageFormat"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method

.method private static parseInt(Ljava/lang/String;)I
    .locals 3

    .line 137
    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 139
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 140
    :catch_0
    move-exception v1

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->error(Ljava/lang/String;)V

    .line 143
    return v0
.end method

.method public static parseNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;
    .locals 8

    .line 48
    new-instance v7, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public static parseVariant(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;
    .locals 8

    .line 56
    new-instance v7, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, v7

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 172
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 173
    :cond_0
    instance-of v1, p1, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 175
    :cond_1
    check-cast p1, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;

    .line 176
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->getType()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->getType()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 177
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->getEncoding()Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->getEncoding()Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    move-result-object v3

    if-ne v1, v3, :cond_2

    .line 178
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->getPixel()Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->getPixel()Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    move-result-object v3

    if-ne v1, v3, :cond_2

    .line 179
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->getTransformation()Lcom/android/bluetooth/avrcpcontroller/BipTransformation;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->getTransformation()Lcom/android/bluetooth/avrcpcontroller/BipTransformation;

    move-result-object v3

    if-ne v1, v3, :cond_2

    .line 180
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->getSize()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->getSize()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 181
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->getMaxSize()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->getMaxSize()I

    move-result v1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 176
    :goto_0
    return v0
.end method

.method public getEncoding()Lcom/android/bluetooth/avrcpcontroller/BipEncoding;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mEncoding:Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    return-object v0
.end method

.method public getMaxSize()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mMaxSize:I

    return v0
.end method

.method public getPixel()Lcom/android/bluetooth/avrcpcontroller/BipPixel;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mPixel:Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mSize:I

    return v0
.end method

.method public getTransformation()Lcom/android/bluetooth/avrcpcontroller/BipTransformation;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mTransformation:Lcom/android/bluetooth/avrcpcontroller/BipTransformation;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mFormatType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 186
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mEncoding:Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->getType()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mPixel:Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    if-eqz v0, :cond_7

    .line 187
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->getType()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    iget v2, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mFormatType:I

    const-string v3, " size=\""

    const-string v4, " />"

    const-string v5, " pixel=\""

    const-string v6, " encoding=\""

    const/4 v7, -0x1

    const-string v8, "\""

    if-eqz v2, :cond_5

    const/4 v9, 0x1

    if-eq v2, v9, :cond_1

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format type \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mFormatType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->error(Ljava/lang/String;)V

    .line 222
    return-object v1

    .line 205
    :cond_1
    const-string v1, "<variant"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mEncoding:Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mPixel:Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mTransformation:Lcom/android/bluetooth/avrcpcontroller/BipTransformation;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->supportsAny()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " transformation=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mTransformation:Lcom/android/bluetooth/avrcpcontroller/BipTransformation;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_2
    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mSize:I

    if-le v1, v7, :cond_3

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_3
    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mMaxSize:I

    if-le v1, v7, :cond_4

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " maxsize=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mMaxSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 196
    :cond_5
    const-string v1, "<native"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mEncoding:Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mPixel:Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mSize:I

    if-le v1, v7, :cond_6

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 188
    :cond_7
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing required fields [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mEncoding:Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    const-string v3, ""

    if-nez v2, :cond_8

    const-string v2, "encoding "

    goto :goto_1

    :cond_8
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->mPixel:Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    if-nez v2, :cond_9

    const-string v3, "pixel "

    :cond_9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;->error(Ljava/lang/String;)V

    .line 190
    return-object v1
.end method
