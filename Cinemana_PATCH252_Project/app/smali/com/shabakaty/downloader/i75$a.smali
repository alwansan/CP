.class public Lcom/shabakaty/downloader/i75$a;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/i75;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:Lcom/shabakaty/downloader/zk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/zk4<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/zk4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zk4;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/i75$a;->b:Lcom/shabakaty/downloader/zk4;

    iput-object p1, p0, Lcom/shabakaty/downloader/i75$a;->a:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/i75$a;->b:Lcom/shabakaty/downloader/zk4;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zk4;->b(Ljava/lang/Object;)Z

    return-void
.end method
