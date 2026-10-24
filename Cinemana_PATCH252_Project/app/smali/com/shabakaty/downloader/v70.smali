.class public final Lcom/shabakaty/downloader/v70;
.super Lcom/shabakaty/downloader/q70;
.source "CompletableFromPublisher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/v70$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/q70;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/wj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/wj3<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/wj3<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/q70;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/v70;->a:Lcom/shabakaty/downloader/wj3;

    return-void
.end method


# virtual methods
.method public f(Lcom/shabakaty/downloader/a80;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v70;->a:Lcom/shabakaty/downloader/wj3;

    new-instance v1, Lcom/shabakaty/downloader/v70$a;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/v70$a;-><init>(Lcom/shabakaty/downloader/a80;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/wj3;->a(Lcom/shabakaty/downloader/ef4;)V

    return-void
.end method
