.class public final Lcom/shabakaty/downloader/nv3$a;
.super Ljava/lang/Object;
.source "RuntimeSourceElementFactory.kt"

# interfaces
.implements Lcom/shabakaty/downloader/b82;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/nv3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lcom/shabakaty/downloader/kp3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/kp3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/nv3$a;->b:Lcom/shabakaty/downloader/kp3;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/t94;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/t94;->a:Lcom/shabakaty/downloader/t94;

    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/d72;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nv3$a;->b:Lcom/shabakaty/downloader/kp3;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/shabakaty/downloader/nv3$a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/nv3$a;->b:Lcom/shabakaty/downloader/kp3;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
