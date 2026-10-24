.class public Lcom/shabakaty/downloader/zf0$a;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/zf0;->b(Lcom/shabakaty/downloader/x24;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/x24;

.field public final synthetic s:Lcom/shabakaty/downloader/zf0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zf0;Lcom/shabakaty/downloader/x24;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/zf0$a;->s:Lcom/shabakaty/downloader/zf0;

    iput-object p2, p0, Lcom/shabakaty/downloader/zf0$a;->r:Lcom/shabakaty/downloader/x24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zf0$a;->s:Lcom/shabakaty/downloader/zf0;

    iget-object v1, p0, Lcom/shabakaty/downloader/zf0$a;->r:Lcom/shabakaty/downloader/x24;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/zf0;->a(Lcom/shabakaty/downloader/zf0;Lcom/shabakaty/downloader/x24;)Lcom/shabakaty/downloader/uk4;

    return-void
.end method
