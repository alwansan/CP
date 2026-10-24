.class public Lcom/shabakaty/downloader/ln0$a;
.super Ljava/lang/Object;
.source "DefaultCallAdapterFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ln0;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lcom/shabakaty/downloader/lt3;)Lcom/shabakaty/downloader/oq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/oq<",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/nq<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/reflect/Type;

.field public final synthetic b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ln0;Ljava/lang/reflect/Type;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/ln0$a;->a:Ljava/lang/reflect/Type;

    iput-object p3, p0, Lcom/shabakaty/downloader/ln0$a;->b:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ln0$a;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public b(Lcom/shabakaty/downloader/nq;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ln0$a;->b:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/ln0$b;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/ln0$b;-><init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/nq;)V

    move-object p1, v1

    :goto_0
    return-object p1
.end method
