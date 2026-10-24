.class public final Lcom/shabakaty/downloader/f90$b;
.super Ljava/lang/Object;
.source "CompositeMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/f90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/uq2;

.field public final b:Lcom/shabakaty/downloader/uq2$b;

.field public final c:Lcom/shabakaty/downloader/f90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/f90<",
            "TT;>.a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uq2;Lcom/shabakaty/downloader/uq2$b;Lcom/shabakaty/downloader/f90$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/uq2;",
            "Lcom/shabakaty/downloader/uq2$b;",
            "Lcom/shabakaty/downloader/f90<",
            "TT;>.a;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/f90$b;->a:Lcom/shabakaty/downloader/uq2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/f90$b;->b:Lcom/shabakaty/downloader/uq2$b;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/f90$b;->c:Lcom/shabakaty/downloader/f90$a;

    return-void
.end method
