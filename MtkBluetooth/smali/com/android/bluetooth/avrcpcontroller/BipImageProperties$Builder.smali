.class public Lcom/android/bluetooth/avrcpcontroller/BipImageProperties$Builder;
.super Ljava/lang/Object;
.source "BipImageProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mProperties:Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;-><init>(Lcom/android/bluetooth/avrcpcontroller/BipImageProperties$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties$Builder;->mProperties:Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;

    return-void
.end method


# virtual methods
.method public addAttachment(Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;)Lcom/android/bluetooth/avrcpcontroller/BipImageProperties$Builder;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties$Builder;->mProperties:Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->access$500(Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;Lcom/android/bluetooth/avrcpcontroller/BipAttachmentFormat;)V

    .line 117
    return-object p0
.end method

.method public addNativeFormat(Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;)Lcom/android/bluetooth/avrcpcontroller/BipImageProperties$Builder;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties$Builder;->mProperties:Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->access$300(Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;)V

    .line 95
    return-object p0
.end method

.method public addVariantFormat(Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;)Lcom/android/bluetooth/avrcpcontroller/BipImageProperties$Builder;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties$Builder;->mProperties:Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->access$400(Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;Lcom/android/bluetooth/avrcpcontroller/BipImageFormat;)V

    .line 106
    return-object p0
.end method

.method public build()Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties$Builder;->mProperties:Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;

    return-object v0
.end method

.method public setFriendlyName(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/BipImageProperties$Builder;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties$Builder;->mProperties:Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->access$202(Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public setImageHandle(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/BipImageProperties$Builder;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties$Builder;->mProperties:Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->access$102(Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    return-object p0
.end method
