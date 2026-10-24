.class public Lcom/shabakaty/downloader/gf3;
.super Ljava/lang/Object;
.source "PrettyFormatStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/gf3$b;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z

.field public final d:Lcom/shabakaty/downloader/kk2;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gf3$b;Lcom/shabakaty/downloader/gf3$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget p2, p1, Lcom/shabakaty/downloader/gf3$b;->a:I

    iput p2, p0, Lcom/shabakaty/downloader/gf3;->a:I

    .line 3
    iget p2, p1, Lcom/shabakaty/downloader/gf3$b;->b:I

    iput p2, p0, Lcom/shabakaty/downloader/gf3;->b:I

    .line 4
    iget-boolean p2, p1, Lcom/shabakaty/downloader/gf3$b;->c:Z

    iput-boolean p2, p0, Lcom/shabakaty/downloader/gf3;->c:Z

    .line 5
    iget-object p2, p1, Lcom/shabakaty/downloader/gf3$b;->d:Lcom/shabakaty/downloader/kk2;

    iput-object p2, p0, Lcom/shabakaty/downloader/gf3;->d:Lcom/shabakaty/downloader/kk2;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/gf3$b;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/shabakaty/downloader/gf3;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/gf3;->d:Lcom/shabakaty/downloader/kk2;

    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/kk2;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "line.separator"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 2
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p3, v1

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2502 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v2}, Lcom/shabakaty/downloader/gf3;->a(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
