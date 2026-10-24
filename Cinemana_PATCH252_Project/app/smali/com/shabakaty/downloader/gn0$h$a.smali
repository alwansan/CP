.class public Lcom/shabakaty/downloader/gn0$h$a;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/gn0$h;-><init>(Lcom/shabakaty/downloader/gn0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/gn0$h;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gn0$h;Lcom/shabakaty/downloader/gn0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/gn0$h$a;->a:Lcom/shabakaty/downloader/gn0$h;

    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/gn0$h$a;->a:Lcom/shabakaty/downloader/gn0$h;

    iget-object p2, p2, Lcom/shabakaty/downloader/gn0$h;->c:Lcom/shabakaty/downloader/gn0;

    .line 2
    iget-object p2, p2, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/gn0$h$a;->a:Lcom/shabakaty/downloader/gn0$h;

    iget-object p1, p1, Lcom/shabakaty/downloader/gn0$h;->c:Lcom/shabakaty/downloader/gn0;

    .line 5
    iget-object p2, p1, Lcom/shabakaty/downloader/gn0;->p:Lcom/shabakaty/downloader/ze$c;

    if-eqz p2, :cond_1

    .line 6
    iget-boolean p1, p1, Lcom/shabakaty/downloader/gn0;->S:Z

    if-eqz p1, :cond_1

    .line 7
    check-cast p2, Lcom/shabakaty/downloader/po2$b;

    .line 8
    iget-object p1, p2, Lcom/shabakaty/downloader/po2$b;->a:Lcom/shabakaty/downloader/po2;

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/po2;->i1:Lcom/shabakaty/downloader/lr3$a;

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p1}, Lcom/shabakaty/downloader/lr3$a;->a()V

    :cond_1
    return-void
.end method

.method public onTearDown(Landroid/media/AudioTrack;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0$h$a;->a:Lcom/shabakaty/downloader/gn0$h;

    iget-object v0, v0, Lcom/shabakaty/downloader/gn0$h;->c:Lcom/shabakaty/downloader/gn0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/gn0$h$a;->a:Lcom/shabakaty/downloader/gn0$h;

    iget-object p1, p1, Lcom/shabakaty/downloader/gn0$h;->c:Lcom/shabakaty/downloader/gn0;

    .line 5
    iget-object v0, p1, Lcom/shabakaty/downloader/gn0;->p:Lcom/shabakaty/downloader/ze$c;

    if-eqz v0, :cond_1

    .line 6
    iget-boolean p1, p1, Lcom/shabakaty/downloader/gn0;->S:Z

    if-eqz p1, :cond_1

    .line 7
    check-cast v0, Lcom/shabakaty/downloader/po2$b;

    .line 8
    iget-object p1, v0, Lcom/shabakaty/downloader/po2$b;->a:Lcom/shabakaty/downloader/po2;

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/po2;->i1:Lcom/shabakaty/downloader/lr3$a;

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p1}, Lcom/shabakaty/downloader/lr3$a;->a()V

    :cond_1
    return-void
.end method
