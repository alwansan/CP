.class public final Lcom/shabakaty/downloader/ij2$g;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ij2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/ij2$f;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ij2$f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ij2$g;->r:Lcom/shabakaty/downloader/ij2$f;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ij2$g;->r:Lcom/shabakaty/downloader/ij2$f;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ij2$f;->a()V

    return-void
.end method
