.class public Lzendesk/belvedere/j;
.super Ljava/lang/Object;
.source "ImageStreamPresenter.java"


# instance fields
.field public final a:Lcom/shabakaty/downloader/lz1;

.field public final b:Lzendesk/belvedere/i;

.field public final c:Lzendesk/belvedere/c;

.field public final d:Lzendesk/belvedere/d$b;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lz1;Lzendesk/belvedere/i;Lzendesk/belvedere/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lzendesk/belvedere/j$a;

    invoke-direct {v0, p0}, Lzendesk/belvedere/j$a;-><init>(Lzendesk/belvedere/j;)V

    iput-object v0, p0, Lzendesk/belvedere/j;->d:Lzendesk/belvedere/d$b;

    .line 3
    iput-object p1, p0, Lzendesk/belvedere/j;->a:Lcom/shabakaty/downloader/lz1;

    .line 4
    iput-object p2, p0, Lzendesk/belvedere/j;->b:Lzendesk/belvedere/i;

    .line 5
    iput-object p3, p0, Lzendesk/belvedere/j;->c:Lzendesk/belvedere/c;

    return-void
.end method
