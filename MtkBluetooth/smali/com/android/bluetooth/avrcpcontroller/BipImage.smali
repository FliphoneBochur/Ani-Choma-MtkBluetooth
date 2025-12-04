.class public Lcom/android/bluetooth/avrcpcontroller/BipImage;
.super Ljava/lang/Object;
.source "BipImage.java"


# instance fields
.field private mImage:Landroid/graphics/Bitmap;

.field private final mImageHandle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImage;->mImage:Landroid/graphics/Bitmap;

    .line 40
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImage;->mImageHandle:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/BipImage;->mImage:Landroid/graphics/Bitmap;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImage;->mImage:Landroid/graphics/Bitmap;

    .line 35
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImage;->mImageHandle:Ljava/lang/String;

    .line 36
    invoke-direct {p0, p2}, Lcom/android/bluetooth/avrcpcontroller/BipImage;->parse(Ljava/io/InputStream;)V

    .line 37
    return-void
.end method

.method private parse(Ljava/io/InputStream;)V
    .locals 0

    .line 47
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BipImage;->mImage:Landroid/graphics/Bitmap;

    .line 48
    return-void
.end method


# virtual methods
.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImage;->mImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageHandle()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImage;->mImageHandle:Ljava/lang/String;

    return-object v0
.end method
