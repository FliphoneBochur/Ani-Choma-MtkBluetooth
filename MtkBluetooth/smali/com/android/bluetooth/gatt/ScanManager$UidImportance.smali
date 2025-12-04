.class Lcom/android/bluetooth/gatt/ScanManager$UidImportance;
.super Ljava/lang/Object;
.source "ScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/ScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UidImportance"
.end annotation


# instance fields
.field public importance:I

.field final synthetic this$0:Lcom/android/bluetooth/gatt/ScanManager;

.field public uid:I


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/ScanManager;II)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$UidImportance;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p2, p0, Lcom/android/bluetooth/gatt/ScanManager$UidImportance;->uid:I

    .line 116
    iput p3, p0, Lcom/android/bluetooth/gatt/ScanManager$UidImportance;->importance:I

    .line 117
    return-void
.end method
