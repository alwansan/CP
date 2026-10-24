.class public final Lcom/shabakaty/downloader/zr1$a;
.super Ljava/lang/Object;
.source "Runnable.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/zr1;->f(JLcom/shabakaty/downloader/fv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/zr1;

.field public final synthetic s:Lcom/shabakaty/downloader/fv;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zr1;Lcom/shabakaty/downloader/fv;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/zr1$a;->r:Lcom/shabakaty/downloader/zr1;

    iput-object p2, p0, Lcom/shabakaty/downloader/zr1$a;->s:Lcom/shabakaty/downloader/fv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr1$a;->s:Lcom/shabakaty/downloader/fv;

    iget-object v1, p0, Lcom/shabakaty/downloader/zr1$a;->r:Lcom/shabakaty/downloader/zr1;

    sget-object v2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/fv;->u(Lcom/shabakaty/downloader/pe0;Ljava/lang/Object;)V

    return-void
.end method
