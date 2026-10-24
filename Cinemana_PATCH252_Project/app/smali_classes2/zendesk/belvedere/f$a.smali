.class public Lzendesk/belvedere/f$a;
.super Ljava/lang/Object;
.source "ImageStreamItems.java"

# interfaces
.implements Lzendesk/belvedere/SelectableView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/belvedere/f;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lzendesk/belvedere/f;


# direct methods
.method public constructor <init>(Lzendesk/belvedere/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/belvedere/f$a;->a:Lzendesk/belvedere/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lzendesk/belvedere/f$a;->a:Lzendesk/belvedere/f;

    .line 2
    iget-object v0, p1, Lzendesk/belvedere/f;->g:Lzendesk/belvedere/d$b;

    .line 3
    check-cast v0, Lzendesk/belvedere/j$a;

    invoke-virtual {v0, p1}, Lzendesk/belvedere/j$a;->a(Lcom/shabakaty/downloader/jz1;)Z

    move-result p1

    return p1
.end method
