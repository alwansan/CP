.class public final synthetic Lcom/shabakaty/downloader/iy3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/ky3$a;


# static fields
.field public static final synthetic a:Lcom/shabakaty/downloader/iy3;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/iy3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/iy3;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/iy3;->a:Lcom/shabakaty/downloader/iy3;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/ky3;->t:Ljava/util/List;

    const-string v0, "ALTER TABLE events ADD COLUMN payload_encoding TEXT"

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
