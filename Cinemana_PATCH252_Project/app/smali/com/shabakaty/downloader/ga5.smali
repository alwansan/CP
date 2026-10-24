.class public final Lcom/shabakaty/downloader/ga5;
.super Lcom/shabakaty/downloader/ra5;
.source "com.google.android.gms:play-services-base@@17.4.0"


# instance fields
.field public final synthetic b:Lcom/shabakaty/downloader/ij$c;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/na5;Lcom/shabakaty/downloader/ij$c;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/ga5;->b:Lcom/shabakaty/downloader/ij$c;

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/ra5;-><init>(Lcom/shabakaty/downloader/na5;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ga5;->b:Lcom/shabakaty/downloader/ij$c;

    new-instance v1, Lcom/shabakaty/downloader/gb0;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/gb0;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ij$c;->a(Lcom/shabakaty/downloader/gb0;)V

    return-void
.end method
