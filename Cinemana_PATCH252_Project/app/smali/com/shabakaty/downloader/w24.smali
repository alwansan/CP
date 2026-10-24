.class public Lcom/shabakaty/downloader/w24;
.super Ljava/lang/Object;
.source "SettingsData.java"

# interfaces
.implements Lcom/shabakaty/downloader/r24;


# instance fields
.field public final a:Lcom/shabakaty/downloader/hb;

.field public final b:Lcom/shabakaty/downloader/c24;

.field public final c:Lcom/shabakaty/downloader/ja1;

.field public final d:J


# direct methods
.method public constructor <init>(JLcom/shabakaty/downloader/hb;Lcom/shabakaty/downloader/c24;Lcom/shabakaty/downloader/ja1;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/w24;->d:J

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/w24;->a:Lcom/shabakaty/downloader/hb;

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/w24;->b:Lcom/shabakaty/downloader/c24;

    .line 5
    iput-object p5, p0, Lcom/shabakaty/downloader/w24;->c:Lcom/shabakaty/downloader/ja1;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/ja1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w24;->c:Lcom/shabakaty/downloader/ja1;

    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/c24;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w24;->b:Lcom/shabakaty/downloader/c24;

    return-object v0
.end method
