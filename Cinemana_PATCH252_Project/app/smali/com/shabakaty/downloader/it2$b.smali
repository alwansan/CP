.class public final Lcom/shabakaty/downloader/it2$b;
.super Lcom/shabakaty/downloader/af2;
.source "Migrations.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/it2;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/it2$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/it2$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/it2$b;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/it2$b;->r:Lcom/shabakaty/downloader/it2$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `DownloadsCollectionItem` (\n\t`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,\n\t`name` TEXT NOT NULL DEFAULT \"\",\n\t`image` TEXT NOT NULL DEFAULT \"\"\n)"

    return-object v0
.end method
