.class Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
.super Ljava/lang/Object;
.source "BluetoothPbapObexServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppParamValue"
.end annotation


# instance fields
.field public callHistoryVersionCounter:[B

.field public ignorefilter:Z

.field public listStartOffset:I

.field public maxListCount:I

.field public needTag:I

.field public order:Ljava/lang/String;

.field public propertySelector:[B

.field public searchAttr:Ljava/lang/String;

.field public searchValue:Ljava/lang/String;

.field public supportedFeature:[B

.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

.field public vCardSelector:[B

.field public vCardSelectorOperator:Ljava/lang/String;

.field public vcard21:Z


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;)V
    .locals 1

    .line 623
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    const p1, 0xffff

    iput p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    .line 625
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    .line 626
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    .line 627
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    .line 628
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->order:Ljava/lang/String;

    .line 629
    iput p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 630
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    .line 632
    iput-boolean p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    .line 633
    const-string p1, "0"

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vCardSelectorOperator:Ljava/lang/String;

    .line 634
    const/16 p1, 0x8

    new-array v0, p1, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->propertySelector:[B

    .line 635
    new-array p1, p1, [B

    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vCardSelector:[B

    .line 636
    const/4 p1, 0x4

    new-array p1, p1, [B

    fill-array-data p1, :array_2

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->supportedFeature:[B

    .line 637
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public dump()V
    .locals 2

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxListCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " listStartOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " searchValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " searchAttr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " needTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " vcard21="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->order:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "vcardselector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vCardSelector:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "vcardselop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vCardSelectorOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPbapObexServer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void
.end method
