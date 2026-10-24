.class public Lcom/shabakaty/downloader/yv3$b;
.super Ljava/lang/Object;
.source "RxRoom.java"

# interfaces
.implements Lcom/shabakaty/downloader/j2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/yv3;->a(Lcom/shabakaty/downloader/y43;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/v32$c;

.field public final synthetic b:Lcom/shabakaty/downloader/yv3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yv3;Lcom/shabakaty/downloader/v32$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yv3$b;->b:Lcom/shabakaty/downloader/yv3;

    iput-object p2, p0, Lcom/shabakaty/downloader/yv3$b;->a:Lcom/shabakaty/downloader/v32$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yv3$b;->b:Lcom/shabakaty/downloader/yv3;

    iget-object v0, v0, Lcom/shabakaty/downloader/yv3;->b:Lcom/shabakaty/downloader/vt3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/vt3;->e:Lcom/shabakaty/downloader/v32;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/yv3$b;->a:Lcom/shabakaty/downloader/v32$c;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/v32;->d(Lcom/shabakaty/downloader/v32$c;)V

    return-void
.end method
