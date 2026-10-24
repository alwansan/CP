.class public final Lcom/shabakaty/downloader/b31;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lcom/shabakaty/downloader/l04;
.implements Lcom/shabakaty/downloader/f11;


# static fields
.field public static final a:Lcom/shabakaty/downloader/b31;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/b31;

    invoke-direct {v0}, Lcom/shabakaty/downloader/b31;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/b31;->a:Lcom/shabakaty/downloader/b31;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Lcom/shabakaty/downloader/l04;
    .locals 0

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/b31;->a:Lcom/shabakaty/downloader/b31;

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/v21;->r:Lcom/shabakaty/downloader/v21;

    return-object v0
.end method
