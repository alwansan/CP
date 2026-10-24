.class public abstract Lcom/shabakaty/downloader/gj3;
.super Ljava/lang/Object;
.source "ProtoContainer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/gj3$a;,
        Lcom/shabakaty/downloader/gj3$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/jw2;

.field public final b:Lcom/shabakaty/downloader/bu4;

.field public final c:Lcom/shabakaty/downloader/s94;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/s94;Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/gj3;->a:Lcom/shabakaty/downloader/jw2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/gj3;->b:Lcom/shabakaty/downloader/bu4;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/gj3;->c:Lcom/shabakaty/downloader/s94;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/shabakaty/downloader/fi1;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/gj3;->a()Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
