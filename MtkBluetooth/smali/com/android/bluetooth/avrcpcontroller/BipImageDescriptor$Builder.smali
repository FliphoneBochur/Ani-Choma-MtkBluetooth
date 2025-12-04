.class public Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$Builder;
.super Ljava/lang/Object;
.source "BipImageDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mImageDescriptor:Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;-><init>(Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$Builder;->mImageDescriptor:Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$Builder;->mImageDescriptor:Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;

    return-object v0
.end method

.method public setEncoding(I)Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$Builder;
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$Builder;->mImageDescriptor:Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;

    new-instance v1, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->access$102(Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;Lcom/android/bluetooth/avrcpcontroller/BipEncoding;)Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    .line 81
    return-object p0
.end method

.method public setEncoding(Lcom/android/bluetooth/avrcpcontroller/BipEncoding;)Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$Builder;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$Builder;->mImageDescriptor:Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->access$102(Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;Lcom/android/bluetooth/avrcpcontroller/BipEncoding;)Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    .line 70
    return-object p0
.end method

.method public setFileSize(I)Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$Builder;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$Builder;->mImageDescriptor:Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->access$402(Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;I)I

    .line 127
    return-object p0
.end method

.method public setFixedDimensions(II)Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$Builder;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$Builder;->mImageDescriptor:Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;

    invoke-static {p1, p2}, Lcom/android/bluetooth/avrcpcontroller/BipPixel;->createFixed(II)Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->access$202(Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;Lcom/android/bluetooth/avrcpcontroller/BipPixel;)Lcom/android/bluetooth/avrcpcontroller/BipPixel;

    .line 105
    return-object p0
.end method

.method public setMaxFileSize(I)Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$Builder;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$Builder;->mImageDescriptor:Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->access$502(Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;I)I

    .line 138
    return-object p0
.end method

.method public setPropietaryEncoding(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$Builder;
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$Builder;->mImageDescriptor:Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;

    new-instance v1, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p1}, Lcom/android/bluetooth/avrcpcontroller/BipEncoding;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->access$102(Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;Lcom/android/bluetooth/avrcpcontroller/BipEncoding;)Lcom/android/bluetooth/avrcpcontroller/BipEncoding;

    .line 93
    return-object p0
.end method

.method public setTransformation(I)Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$Builder;
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$Builder;->mImageDescriptor:Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;

    new-instance v1, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;

    invoke-direct {v1, p1}, Lcom/android/bluetooth/avrcpcontroller/BipTransformation;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->access$302(Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;Lcom/android/bluetooth/avrcpcontroller/BipTransformation;)Lcom/android/bluetooth/avrcpcontroller/BipTransformation;

    .line 116
    return-object p0
.end method
