.class public Lcom/shabakaty/downloader/iq4$b;
.super Lcom/shabakaty/downloader/gq4;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/iq4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/iq4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/iq4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/gq4;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/iq4$b;->a:Lcom/shabakaty/downloader/iq4;

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Lcom/shabakaty/downloader/dq4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/iq4$b;->a:Lcom/shabakaty/downloader/iq4;

    iget v1, v0, Lcom/shabakaty/downloader/iq4;->S:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/shabakaty/downloader/iq4;->S:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/shabakaty/downloader/iq4;->T:Z

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/dq4;->n()V

    .line 4
    :cond_0
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/dq4;->y(Lcom/shabakaty/downloader/dq4$d;)Lcom/shabakaty/downloader/dq4;

    return-void
.end method

.method public onTransitionStart(Lcom/shabakaty/downloader/dq4;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/iq4$b;->a:Lcom/shabakaty/downloader/iq4;

    iget-boolean v0, p1, Lcom/shabakaty/downloader/iq4;->T:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/dq4;->J()V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/iq4$b;->a:Lcom/shabakaty/downloader/iq4;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/shabakaty/downloader/iq4;->T:Z

    :cond_0
    return-void
.end method
