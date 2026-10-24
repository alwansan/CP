.class public final Lcom/shabakaty/downloader/mn3;
.super Ljava/lang/Object;
.source "Share.kt"

# interfaces
.implements Lcom/shabakaty/downloader/gc4;
.implements Lcom/shabakaty/downloader/te1;
.implements Lcom/shabakaty/downloader/go1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/gc4<",
        "TT;>;",
        "Lcom/shabakaty/downloader/go1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/gc4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/gc4<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gc4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gc4<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/mn3;->r:Lcom/shabakaty/downloader/gc4;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;)Lcom/shabakaty/downloader/te1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/me0;",
            "I",
            "Lcom/shabakaty/downloader/co;",
            ")",
            "Lcom/shabakaty/downloader/te1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/shabakaty/downloader/ic4;->b(Lcom/shabakaty/downloader/gc4;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;)Lcom/shabakaty/downloader/te1;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ue1<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/mn3;->r:Lcom/shabakaty/downloader/gc4;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/te1;->d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/mn3;->r:Lcom/shabakaty/downloader/gc4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/gc4;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
