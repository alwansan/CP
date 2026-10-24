.class public final Lcom/shabakaty/downloader/w70$c;
.super Ljava/lang/Object;
.source "CompletableFutureCallAdapterFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/w70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/w70$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/oq<",
        "TR;",
        "Ljava/util/concurrent/CompletableFuture<",
        "Lcom/shabakaty/downloader/xs3<",
        "TR;>;>;>;"
    }
.end annotation

.annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/w70$c;->a:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w70$c;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public b(Lcom/shabakaty/downloader/nq;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/w70$b;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/w70$b;-><init>(Lcom/shabakaty/downloader/nq;)V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/w70$c$a;

    invoke-direct {v1, p0, v0}, Lcom/shabakaty/downloader/w70$c$a;-><init>(Lcom/shabakaty/downloader/w70$c;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/nq;->c0(Lcom/shabakaty/downloader/xq;)V

    return-object v0
.end method
