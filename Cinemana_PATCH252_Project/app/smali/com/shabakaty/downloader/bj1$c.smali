.class public Lcom/shabakaty/downloader/bj1$c;
.super Ljava/lang/Object;
.source "FragmentDiscoverMoreBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/bj1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public r:Lcom/shabakaty/downloader/rt0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bj1$c;->r:Lcom/shabakaty/downloader/rt0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rt0;->y()V

    const/4 v0, 0x0

    return-object v0
.end method
