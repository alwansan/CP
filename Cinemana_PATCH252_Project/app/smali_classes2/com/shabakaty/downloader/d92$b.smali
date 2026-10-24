.class public Lcom/shabakaty/downloader/d92$b;
.super Ljava/lang/Object;
.source "JmDNSImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/d92;->q0(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ti2$b;

.field public final synthetic s:Lcom/shabakaty/downloader/h14;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/d92;Lcom/shabakaty/downloader/ti2$b;Lcom/shabakaty/downloader/h14;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/d92$b;->r:Lcom/shabakaty/downloader/ti2$b;

    iput-object p3, p0, Lcom/shabakaty/downloader/d92$b;->s:Lcom/shabakaty/downloader/h14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d92$b;->r:Lcom/shabakaty/downloader/ti2$b;

    iget-object v1, p0, Lcom/shabakaty/downloader/d92$b;->s:Lcom/shabakaty/downloader/h14;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/h14;->f()Ljava/lang/String;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/h14;->f()Ljava/lang/String;

    const/4 v0, 0x0

    throw v0
.end method
