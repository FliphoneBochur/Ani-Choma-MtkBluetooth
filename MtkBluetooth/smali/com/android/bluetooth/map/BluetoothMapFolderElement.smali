.class public Lcom/android/bluetooth/map/BluetoothMapFolderElement;
.super Ljava/lang/Object;
.source "BluetoothMapFolderElement.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/bluetooth/map/BluetoothMapFolderElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final D:Z

.field private static final TAG:Ljava/lang/String; = "BluetoothMapFolderElement"

.field private static final V:Z


# instance fields
.field private mFolderId:J

.field private mHasEmailContent:Z

.field private mHasImContent:Z

.field private mHasSmsMmsContent:Z

.field private mIgnore:Z

.field private mName:Ljava/lang/String;

.field private mParent:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

.field private mSubFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/BluetoothMapFolderElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    .line 52
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->V:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mParent:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mFolderId:J

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasSmsMmsContent:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasImContent:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasEmailContent:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mIgnore:Z

    .line 57
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mParent:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 59
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    .line 60
    return-void
.end method

.method private static findFolderById(JLcom/android/bluetooth/map/BluetoothMapFolderElement;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 3

    .line 157
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    .line 158
    return-object p2

    .line 162
    :cond_0
    iget-object v0, p2, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    .line 161
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object p2, p2, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    .line 162
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    new-array p2, p2, [Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-interface {v0, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 163
    invoke-static {p0, p1, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->findFolderById(JLcom/android/bluetooth/map/BluetoothMapFolderElement;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v2

    .line 164
    if-eqz v2, :cond_1

    .line 165
    return-object v2

    .line 162
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFolderById(JLcom/android/bluetooth/map/BluetoothMapFolderElement;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 0

    .line 149
    if-nez p2, :cond_0

    .line 150
    const/4 p0, 0x0

    return-object p0

    .line 152
    :cond_0
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->findFolderById(JLcom/android/bluetooth/map/BluetoothMapFolderElement;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addEmailFolder(Ljava/lang/String;J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 2

    .line 241
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->V:Z

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addEmailFolder() id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMapFolderElement"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object p1

    .line 245
    invoke-virtual {p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setFolderId(J)V

    .line 246
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasEmailContent(Z)V

    .line 247
    return-object p1
.end method

.method public addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 4

    .line 190
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 191
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 192
    const-string v1, "addFolder():"

    const-string v2, "BluetoothMapFolderElement"

    if-nez v0, :cond_1

    .line 193
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-direct {v0, p1, p0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;-><init>(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    .line 197
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 199
    :cond_1
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz v3, :cond_2

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already added"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_2
    :goto_0
    return-object v0
.end method

.method public addImFolder(Ljava/lang/String;J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 2

    .line 226
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addImFolder() id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMapFolderElement"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object p1

    .line 230
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasImContent(Z)V

    .line 231
    invoke-virtual {p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setFolderId(J)V

    .line 232
    return-object p1
.end method

.method public addSmsMmsFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 2

    .line 212
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz v0, :cond_0

    .line 213
    const-string v0, "BluetoothMapFolderElement"

    const-string v1, "addSmsMmsFolder()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object p1

    .line 216
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasSmsMmsContent(Z)V

    .line 217
    return-object p1
.end method

.method public appendSubfolders(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 334
    const-string v1, "UTF-8"

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 337
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 340
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 341
    goto :goto_0

    .line 344
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 345
    const-string v2, "folder-listing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 346
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz v2, :cond_1

    .line 347
    const-string v2, "BluetoothMapFolderElement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown XML tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_1
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 351
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->readFolders(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    goto :goto_0

    .line 354
    :cond_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 355
    nop

    .line 356
    return-void

    .line 354
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 355
    throw v0
.end method

.method public compareTo(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)I
    .locals 6

    .line 408
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 409
    return v0

    .line 411
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    .line 413
    const-string v2, "BluetoothMapFolderElement"

    if-nez v1, :cond_7

    .line 414
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    sub-int/2addr v1, v3

    .line 415
    if-nez v1, :cond_6

    .line 417
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 418
    iget-object v4, p1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    .line 419
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 420
    if-nez v4, :cond_2

    .line 421
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz p1, :cond_1

    .line 422
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not in another"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_1
    return v0

    .line 426
    :cond_2
    invoke-virtual {v1, v4}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->compareTo(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)I

    move-result v4

    .line 427
    if-eqz v4, :cond_4

    .line 428
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz p1, :cond_3

    .line 429
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " filed compareTo()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_3
    return v4

    .line 433
    :cond_4
    move v1, v4

    goto :goto_0

    :cond_5
    goto :goto_1

    .line 435
    :cond_6
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz v0, :cond_8

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSubFolders.size(): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " another.mSubFolders.size(): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    .line 437
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 436
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 441
    :cond_7
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz v0, :cond_8

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mName: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " another.mName: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_8
    :goto_1
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 39
    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->compareTo(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)I

    move-result p1

    return p1
.end method

.method public encode(II)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 268
    const-string v0, "folder"

    const-string v1, "folder-listing"

    const-string v2, "UTF-8"

    const-string v3, "BluetoothMapFolderElement"

    const-string v4, "error encoding folderElement"

    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 269
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>(I)V

    .line 272
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    .line 273
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    new-array v8, v8, [Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-interface {v7, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 275
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-gt p1, v8, :cond_5

    .line 279
    add-int/2addr p2, p1

    .line 280
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-le p2, v8, :cond_0

    .line 281
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    .line 285
    :cond_0
    :try_start_0
    invoke-interface {v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 286
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v6, v2, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 287
    const-string v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v6, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 288
    const/4 v8, 0x0

    invoke-interface {v6, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 289
    const-string v9, "version"

    const-string v10, "1.0"

    invoke-interface {v6, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 290
    nop

    :goto_0
    if-ge p1, p2, :cond_1

    .line 291
    invoke-interface {v6, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 292
    const-string v9, "name"

    aget-object v10, v7, p1

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    invoke-interface {v6, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 290
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 295
    :cond_1
    invoke-interface {v6, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 296
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    nop

    .line 313
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 307
    :catch_0
    move-exception p1

    .line 308
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz p2, :cond_2

    .line 309
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 302
    :catch_1
    move-exception p1

    .line 303
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz p2, :cond_3

    .line 304
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 297
    :catch_2
    move-exception p1

    .line 298
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz p2, :cond_4

    .line 299
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 276
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FolderListingEncode: offset > subFolders.size()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 0

    .line 144
    invoke-static {p1, p2, p0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderById(JLcom/android/bluetooth/map/BluetoothMapFolderElement;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object p1

    return-object p1
.end method

.method public getFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 4

    .line 133
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 134
    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 135
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 136
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object p1

    .line 137
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 138
    const/4 p1, 0x0

    .line 140
    :cond_0
    return-object p1
.end method

.method public getFolderId()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mFolderId:J

    return-wide v0
.end method

.method public getFullPath()Ljava/lang/String;
    .locals 5

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mParent:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 121
    :goto_0
    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 123
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_0
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mParent:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    return-object v0
.end method

.method public getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 2

    .line 177
    move-object v0, p0

    .line 178
    :goto_0
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_0
    return-object v0
.end method

.method public getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    return-object p1
.end method

.method public getSubFolderCount()I
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public hasEmailContent()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasEmailContent:Z

    return v0
.end method

.method public hasImContent()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasImContent:Z

    return v0
.end method

.method public hasSmsMmsContent()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasSmsMmsContent:Z

    return v0
.end method

.method public readFolders(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    const-string v1, "BluetoothMapFolderElement"

    if-eqz v0, :cond_0

    .line 367
    const-string v0, "readFolders(): "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    .line 372
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 373
    goto :goto_0

    .line 376
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "folder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 378
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz v2, :cond_2

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown XML tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_2
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 382
    goto :goto_0

    .line 384
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 385
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_6

    .line 386
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 388
    nop

    .line 389
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v3

    .line 390
    iget-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasEmailContent:Z

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasEmailContent(Z)V

    .line 391
    iget-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasImContent:Z

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasImContent(Z)V

    .line 392
    iget-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasSmsMmsContent:Z

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasSmsMmsContent(Z)V

    .line 393
    goto :goto_2

    .line 394
    :cond_4
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz v3, :cond_5

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown XML attribute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 399
    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 400
    goto/16 :goto_0

    .line 401
    :cond_7
    return-void
.end method

.method public setFolderId(J)V
    .locals 0

    .line 87
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mFolderId:J

    .line 88
    return-void
.end method

.method public setHasEmailContent(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasEmailContent:Z

    .line 96
    return-void
.end method

.method public setHasImContent(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasImContent:Z

    .line 100
    return-void
.end method

.method public setHasSmsMmsContent(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasSmsMmsContent:Z

    .line 92
    return-void
.end method

.method public setIngore(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mIgnore:Z

    .line 64
    return-void
.end method

.method public shouldIgnore()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mIgnore:Z

    return v0
.end method
