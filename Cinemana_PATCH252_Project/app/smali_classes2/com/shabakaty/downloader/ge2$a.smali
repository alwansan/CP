.class public final Lcom/shabakaty/downloader/ge2$a;
.super Ljava/lang/Object;
.source "KotlinExtensions.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ge2;->a(Ljava/lang/Exception;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ud0;

.field public final synthetic s:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ud0;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ge2$a;->r:Lcom/shabakaty/downloader/ud0;

    iput-object p2, p0, Lcom/shabakaty/downloader/ge2$a;->s:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ge2$a;->r:Lcom/shabakaty/downloader/ud0;

    invoke-static {v0}, Lcom/shabakaty/downloader/he0;->q(Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/ge2$a;->s:Ljava/lang/Exception;

    invoke-static {v1}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    return-void
.end method
