.class public Lzendesk/belvedere/g$b;
.super Ljava/lang/Object;
.source "ImageStreamItems.java"

# interfaces
.implements Lzendesk/belvedere/SelectableView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/belvedere/g;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lzendesk/belvedere/g;


# direct methods
.method public constructor <init>(Lzendesk/belvedere/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/belvedere/g$b;->a:Lzendesk/belvedere/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lzendesk/belvedere/g$b;->a:Lzendesk/belvedere/g;

    .line 2
    iget-object v0, p1, Lzendesk/belvedere/g;->f:Lzendesk/belvedere/d$b;

    .line 3
    check-cast v0, Lzendesk/belvedere/j$a;

    invoke-virtual {v0, p1}, Lzendesk/belvedere/j$a;->a(Lcom/shabakaty/downloader/jz1;)Z

    move-result p1

    return p1
.end method
