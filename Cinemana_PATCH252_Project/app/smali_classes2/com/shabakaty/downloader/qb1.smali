.class public Lcom/shabakaty/downloader/qb1;
.super Ljava/lang/Object;
.source "Filters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/qb1$c;,
        Lcom/shabakaty/downloader/qb1$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/db1;

.field public static final b:Lcom/shabakaty/downloader/db1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/qb1$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/qb1$b;-><init>(Lcom/shabakaty/downloader/qb1$a;)V

    sput-object v0, Lcom/shabakaty/downloader/qb1;->a:Lcom/shabakaty/downloader/db1;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/qb1$c;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/qb1$c;-><init>(Lcom/shabakaty/downloader/qb1$a;)V

    sput-object v0, Lcom/shabakaty/downloader/qb1;->b:Lcom/shabakaty/downloader/db1;

    return-void
.end method
