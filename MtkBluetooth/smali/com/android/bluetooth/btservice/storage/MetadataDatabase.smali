.class public abstract Lcom/android/bluetooth/btservice/storage/MetadataDatabase;
.super Landroidx/room/RoomDatabase;
.source "MetadataDatabase.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "bluetooth_db"

.field static final MIGRATION_100_101:Landroidx/room/migration/Migration;

.field static final MIGRATION_101_102:Landroidx/room/migration/Migration;

.field static final MIGRATION_102_103:Landroidx/room/migration/Migration;

.field static final MIGRATION_103_104:Landroidx/room/migration/Migration;

.field static sCurrentConnectionNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->sCurrentConnectionNumber:I

    .line 114
    new-instance v0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase$1;

    const/16 v1, 0x64

    const/16 v2, 0x65

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase$1;-><init>(II)V

    sput-object v0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->MIGRATION_100_101:Landroidx/room/migration/Migration;

    .line 122
    new-instance v0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase$2;

    const/16 v1, 0x66

    invoke-direct {v0, v2, v1}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase$2;-><init>(II)V

    sput-object v0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->MIGRATION_101_102:Landroidx/room/migration/Migration;

    .line 185
    new-instance v0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase$3;

    const/16 v2, 0x67

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase$3;-><init>(II)V

    sput-object v0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->MIGRATION_102_103:Landroidx/room/migration/Migration;

    .line 289
    new-instance v0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase$4;

    const/16 v1, 0x68

    invoke-direct {v0, v2, v1}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase$4;-><init>(II)V

    sput-object v0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->MIGRATION_103_104:Landroidx/room/migration/Migration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static createDatabase(Landroid/content/Context;)Lcom/android/bluetooth/btservice/storage/MetadataDatabase;
    .locals 4

    .line 54
    const-class v0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;

    const-string v1, "bluetooth_db"

    invoke-static {p0, v0, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Landroidx/room/migration/Migration;

    sget-object v2, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->MIGRATION_100_101:Landroidx/room/migration/Migration;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 56
    invoke-virtual {p0, v1}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    new-array v1, v0, [Landroidx/room/migration/Migration;

    sget-object v2, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->MIGRATION_101_102:Landroidx/room/migration/Migration;

    aput-object v2, v1, v3

    .line 57
    invoke-virtual {p0, v1}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    new-array v1, v0, [Landroidx/room/migration/Migration;

    sget-object v2, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->MIGRATION_102_103:Landroidx/room/migration/Migration;

    aput-object v2, v1, v3

    .line 58
    invoke-virtual {p0, v1}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    new-array v0, v0, [Landroidx/room/migration/Migration;

    sget-object v1, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->MIGRATION_103_104:Landroidx/room/migration/Migration;

    aput-object v1, v0, v3

    .line 59
    invoke-virtual {p0, v0}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries()Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;

    .line 54
    return-object p0
.end method

.method public static createDatabaseWithoutMigration(Landroid/content/Context;)Lcom/android/bluetooth/btservice/storage/MetadataDatabase;
    .locals 2

    .line 72
    const-class v0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;

    const-string v1, "bluetooth_db"

    invoke-static {p0, v0, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    .line 74
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    .line 75
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries()Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;

    .line 72
    return-object p0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->mMetadataDao()Lcom/android/bluetooth/btservice/storage/MetadataDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/bluetooth/btservice/storage/MetadataDao;->delete(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public deleteAll()V
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->mMetadataDao()Lcom/android/bluetooth/btservice/storage/MetadataDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/bluetooth/btservice/storage/MetadataDao;->deleteAll()V

    .line 111
    return-void
.end method

.method public varargs insert([Lcom/android/bluetooth/btservice/storage/Metadata;)V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->mMetadataDao()Lcom/android/bluetooth/btservice/storage/MetadataDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/bluetooth/btservice/storage/MetadataDao;->insert([Lcom/android/bluetooth/btservice/storage/Metadata;)V

    .line 86
    return-void
.end method

.method public load()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/btservice/storage/Metadata;",
            ">;"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->mMetadataDao()Lcom/android/bluetooth/btservice/storage/MetadataDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/bluetooth/btservice/storage/MetadataDao;->load()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract mMetadataDao()Lcom/android/bluetooth/btservice/storage/MetadataDao;
.end method
