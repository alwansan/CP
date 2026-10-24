.class public Lcom/shabakaty/downloader/r33;
.super Ljava/lang/Object;
.source "OSOutcomeEventsController.java"

# interfaces
.implements Lcom/shabakaty/downloader/m73;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/n33;

.field public final synthetic b:Lcom/onesignal/f0;


# direct methods
.method public constructor <init>(Lcom/onesignal/f0;Lcom/shabakaty/downloader/n33;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/r33;->b:Lcom/onesignal/f0;

    iput-object p2, p0, Lcom/shabakaty/downloader/r33;->a:Lcom/shabakaty/downloader/n33;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/r33;->b:Lcom/onesignal/f0;

    .line 2
    iget-object p1, p1, Lcom/onesignal/f0;->b:Lcom/shabakaty/downloader/np4;

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/np4;->c()Lcom/shabakaty/downloader/t33;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/downloader/r33;->a:Lcom/shabakaty/downloader/n33;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/t33;->g(Lcom/shabakaty/downloader/n33;)V

    return-void
.end method

.method public b(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
