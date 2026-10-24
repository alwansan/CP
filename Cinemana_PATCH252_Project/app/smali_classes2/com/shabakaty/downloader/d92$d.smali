.class public Lcom/shabakaty/downloader/d92$d;
.super Ljava/lang/Object;
.source "JmDNSImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/d92;->D0(JLcom/shabakaty/downloader/ri0;Lcom/shabakaty/downloader/d92$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ti2$a;

.field public final synthetic s:Lcom/shabakaty/downloader/h14;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/d92;Lcom/shabakaty/downloader/ti2$a;Lcom/shabakaty/downloader/h14;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/d92$d;->r:Lcom/shabakaty/downloader/ti2$a;

    iput-object p3, p0, Lcom/shabakaty/downloader/d92$d;->s:Lcom/shabakaty/downloader/h14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d92$d;->r:Lcom/shabakaty/downloader/ti2$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/d92$d;->s:Lcom/shabakaty/downloader/h14;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ti2$a;->b(Lcom/shabakaty/downloader/h14;)V

    return-void
.end method
