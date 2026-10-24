.class public final Lcom/shabakaty/downloader/mw0$a;
.super Lcom/shabakaty/downloader/af2;
.source "DownloadEventsLogger.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/mw0;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/lw0;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/mw0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/mw0$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/mw0$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/mw0$a;->r:Lcom/shabakaty/downloader/mw0$a;

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

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/lw0;->a:Lcom/shabakaty/downloader/lw0;

    return-object v0
.end method
