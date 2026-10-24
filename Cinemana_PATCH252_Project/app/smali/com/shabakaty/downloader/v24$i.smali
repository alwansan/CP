.class public Lcom/shabakaty/downloader/v24$i;
.super Ljava/lang/Object;
.source "SettingsDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/v24;->l(Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

.field public final synthetic s:Lcom/shabakaty/downloader/v24;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/v24$i;->s:Lcom/shabakaty/downloader/v24;

    iput-object p2, p0, Lcom/shabakaty/downloader/v24$i;->r:Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v24$i;->s:Lcom/shabakaty/downloader/v24;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/v24$i;->s:Lcom/shabakaty/downloader/v24;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/v24;->i:Lcom/shabakaty/downloader/w31;

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/v24$i;->r:Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/w31;->f(Ljava/lang/Object;)I

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/v24$i;->s:Lcom/shabakaty/downloader/v24;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->n()V

    .line 11
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v1, p0, Lcom/shabakaty/downloader/v24$i;->s:Lcom/shabakaty/downloader/v24;

    .line 13
    iget-object v1, v1, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    .line 14
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/v24$i;->s:Lcom/shabakaty/downloader/v24;

    .line 16
    iget-object v1, v1, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    .line 17
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 18
    throw v0
.end method
