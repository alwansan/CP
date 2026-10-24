.class public Lzendesk/belvedere/a$b$a$a;
.super Ljava/lang/Object;
.source "BelvedereUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/belvedere/a$b$a;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Ljava/util/List;

.field public final synthetic s:Landroid/app/Activity;

.field public final synthetic t:Landroid/view/ViewGroup;

.field public final synthetic u:Lzendesk/belvedere/a$b$a;


# direct methods
.method public constructor <init>(Lzendesk/belvedere/a$b$a;Ljava/util/List;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/belvedere/a$b$a$a;->u:Lzendesk/belvedere/a$b$a;

    iput-object p2, p0, Lzendesk/belvedere/a$b$a$a;->r:Ljava/util/List;

    iput-object p3, p0, Lzendesk/belvedere/a$b$a$a;->s:Landroid/app/Activity;

    iput-object p4, p0, Lzendesk/belvedere/a$b$a$a;->t:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    new-instance v9, Lzendesk/belvedere/a$c;

    iget-object v1, p0, Lzendesk/belvedere/a$b$a$a;->r:Ljava/util/List;

    iget-object v10, p0, Lzendesk/belvedere/a$b$a$a;->u:Lzendesk/belvedere/a$b$a;

    iget-object v0, v10, Lzendesk/belvedere/a$b$a;->b:Lzendesk/belvedere/a$b;

    .line 2
    iget-object v2, v0, Lzendesk/belvedere/a$b;->c:Ljava/util/List;

    .line 3
    iget-object v3, v0, Lzendesk/belvedere/a$b;->d:Ljava/util/List;

    .line 4
    iget-object v5, v0, Lzendesk/belvedere/a$b;->e:Ljava/util/List;

    .line 5
    iget-wide v6, v0, Lzendesk/belvedere/a$b;->f:J

    .line 6
    iget-boolean v8, v0, Lzendesk/belvedere/a$b;->g:Z

    const/4 v4, 0x1

    move-object v0, v9

    .line 7
    invoke-direct/range {v0 .. v8}, Lzendesk/belvedere/a$c;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/util/List;JZ)V

    .line 8
    iget-object v0, p0, Lzendesk/belvedere/a$b$a$a;->s:Landroid/app/Activity;

    iget-object v1, p0, Lzendesk/belvedere/a$b$a$a;->t:Landroid/view/ViewGroup;

    iget-object v2, v10, Lzendesk/belvedere/a$b$a;->a:Lzendesk/belvedere/c;

    sget v3, Lzendesk/belvedere/l;->m:I

    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d002b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 10
    new-instance v4, Lzendesk/belvedere/l;

    invoke-direct {v4, v0, v3, v2, v9}, Lzendesk/belvedere/l;-><init>(Landroid/app/Activity;Landroid/view/View;Lzendesk/belvedere/c;Lzendesk/belvedere/a$c;)V

    const/16 v0, 0x30

    .line 11
    invoke-virtual {v4, v1, v0, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 12
    iget-object v0, p0, Lzendesk/belvedere/a$b$a$a;->u:Lzendesk/belvedere/a$b$a;

    iget-object v0, v0, Lzendesk/belvedere/a$b$a;->a:Lzendesk/belvedere/c;

    .line 13
    iput-object v4, v0, Lzendesk/belvedere/c;->u:Lzendesk/belvedere/l;

    .line 14
    iput-object v9, v0, Lzendesk/belvedere/c;->v:Lzendesk/belvedere/a$c;

    return-void
.end method
