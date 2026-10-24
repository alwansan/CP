.class public final Lcom/shabakaty/cinemana/ca1/Bulk102;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final all:Z

.field private final state:Lcom/shabakaty/cinemana/ca1/Download94$State;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/ca1/Download94$State;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Bulk102;->state:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iput-boolean p2, p0, Lcom/shabakaty/cinemana/ca1/Bulk102;->all:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Bulk102;->state:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-boolean v1, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->pending:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/Bulk102;->all:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/shabakaty/cinemana/ca1/Download94$State;->selectAll102(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->selected:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->clear()V

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->update()V

    :cond_1
    return-void
.end method
