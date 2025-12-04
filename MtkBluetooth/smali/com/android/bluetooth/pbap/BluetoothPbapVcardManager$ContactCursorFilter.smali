.class final Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$ContactCursorFilter;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContactCursorFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterByOffset(Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 0

    .line 694
    invoke-static {p0, p1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$ContactCursorFilter;->filterByRange(Landroid/database/Cursor;II)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static filterByRange(Landroid/database/Cursor;II)Landroid/database/Cursor;
    .locals 9

    .line 706
    const-string v0, "contact_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 707
    nop

    .line 710
    nop

    .line 711
    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v0, 0x1

    const-wide/16 v3, -0x1

    move v5, v0

    .line 714
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    if-gt v5, p2, :cond_2

    .line 715
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 716
    cmp-long v8, v3, v6

    if-eqz v8, :cond_1

    .line 717
    nop

    .line 718
    if-lt v5, p1, :cond_0

    .line 719
    new-array v3, v0, [Ljava/lang/Long;

    const/4 v4, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v3, v4

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 720
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->access$300()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 721
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contactIdsCursor.addRow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BluetoothPbapVcardManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_0
    add-int/lit8 v5, v5, 0x1

    move-wide v3, v6

    .line 726
    :cond_1
    goto :goto_0

    .line 727
    :cond_2
    return-object v2
.end method
