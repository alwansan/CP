.class public Lcom/shabakaty/downloader/iq4$a;
.super Lcom/shabakaty/downloader/gq4;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/iq4;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/dq4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/iq4;Lcom/shabakaty/downloader/dq4;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/iq4$a;->a:Lcom/shabakaty/downloader/dq4;

    invoke-direct {p0}, Lcom/shabakaty/downloader/gq4;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Lcom/shabakaty/downloader/dq4;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/iq4$a;->a:Lcom/shabakaty/downloader/dq4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dq4;->B()V

    .line 2
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/dq4;->y(Lcom/shabakaty/downloader/dq4$d;)Lcom/shabakaty/downloader/dq4;

    return-void
.end method
