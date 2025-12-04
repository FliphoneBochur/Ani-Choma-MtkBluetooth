.class Lcom/android/bluetooth/btservice/Config$ProfileConfig;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProfileConfig"
.end annotation


# instance fields
.field mClass:Ljava/lang/Class;

.field mMask:J

.field mSupported:I


# direct methods
.method constructor <init>(Ljava/lang/Class;IJ)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/bluetooth/btservice/Config$ProfileConfig;->mClass:Ljava/lang/Class;

    .line 67
    iput p2, p0, Lcom/android/bluetooth/btservice/Config$ProfileConfig;->mSupported:I

    .line 68
    iput-wide p3, p0, Lcom/android/bluetooth/btservice/Config$ProfileConfig;->mMask:J

    .line 69
    return-void
.end method
