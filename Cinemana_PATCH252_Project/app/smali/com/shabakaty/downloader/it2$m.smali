.class public final Lcom/shabakaty/downloader/it2$m;
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
.field public static final r:Lcom/shabakaty/downloader/it2$m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/it2$m;

    invoke-direct {v0}, Lcom/shabakaty/downloader/it2$m;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/it2$m;->r:Lcom/shabakaty/downloader/it2$m;

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

    const-string v0, "INSERT INTO CinemanaDownloadItem (\n\tid,\n         \tdownloadTaskId,\n         \ttitle,\n         \timgThumbObjUrl,\n         \tpath,\n         \tcollectionID,\n         \tqualityName\n         )\nSELECT\n\tid,\n\tdownloadTaskId,\n\ttitle,\n\tthumbUrl,\n\tpath,\n\tcollectionID,\n\tqualityName\nFROM DownloadItem WHERE finished = 1;"

    return-object v0
.end method
