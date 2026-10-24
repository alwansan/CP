.class public final Lcom/shabakaty/downloader/sf2$b;
.super Lcom/shabakaty/downloader/af2;
.source "LazyJavaAnnotationDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/sf2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/g62;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/fi1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/sf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/sf2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/sf2$b;->r:Lcom/shabakaty/downloader/sf2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sf2$b;->r:Lcom/shabakaty/downloader/sf2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/sf2;->b:Lcom/shabakaty/downloader/g62;

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/g62;->f()Lcom/shabakaty/downloader/v20;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/v20;->b()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    :goto_0
    return-object v0
.end method
