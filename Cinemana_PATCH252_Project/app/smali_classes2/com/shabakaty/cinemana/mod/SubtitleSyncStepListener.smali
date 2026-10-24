.class public final Lcom/shabakaty/cinemana/mod/SubtitleSyncStepListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final context:Landroid/content/Context;

.field private final delta:I

.field private final editor:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/EditText;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/mod/SubtitleSyncStepListener;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/shabakaty/cinemana/mod/SubtitleSyncStepListener;->editor:Landroid/widget/EditText;

    iput p3, p0, Lcom/shabakaty/cinemana/mod/SubtitleSyncStepListener;->delta:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/cinemana/mod/SubtitleSyncStepListener;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/shabakaty/cinemana/mod/SubtitleSyncStepListener;->editor:Landroid/widget/EditText;

    iget v2, p0, Lcom/shabakaty/cinemana/mod/SubtitleSyncStepListener;->delta:I

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/mod/SubtitleSyncHelper;->step(Landroid/content/Context;Landroid/widget/EditText;I)V

    return-void
.end method
