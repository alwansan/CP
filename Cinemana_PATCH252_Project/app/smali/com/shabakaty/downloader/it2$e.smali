.class public final Lcom/shabakaty/downloader/it2$e;
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
.field public static final r:Lcom/shabakaty/downloader/it2$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/it2$e;

    invoke-direct {v0}, Lcom/shabakaty/downloader/it2$e;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/it2$e;->r:Lcom/shabakaty/downloader/it2$e;

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

    const-string v0, "CREATE TABLE IF NOT EXISTS `search_table` (\n\t`nb` TEXT NOT NULL DEFAULT \"\",\n\t`enTitle` TEXT NOT NULL DEFAULT \"\",\n\t`arTitle` TEXT NOT NULL DEFAULT \"\",\n\t`stars` TEXT NOT NULL DEFAULT \"\",\n\t`year` TEXT NOT NULL DEFAULT \"\",\n\t`kind` TEXT NOT NULL DEFAULT \"\",\n\t`season` TEXT NOT NULL DEFAULT \"\",\n\t`imgObjUrl` TEXT NOT NULL DEFAULT \"\",\n\t`episodeNummer` TEXT NOT NULL DEFAULT \"\",\n\t`rate` TEXT NOT NULL DEFAULT \"\",\n\t`imgMediumThumbObjUrl` TEXT NOT NULL DEFAULT \"\",\n\t`categoryEn` TEXT NOT NULL DEFAULT \"\",\n\t`categoryAr` TEXT NOT NULL DEFAULT \"\",\n\tPRIMARY KEY(`nb`)\n)"

    return-object v0
.end method
