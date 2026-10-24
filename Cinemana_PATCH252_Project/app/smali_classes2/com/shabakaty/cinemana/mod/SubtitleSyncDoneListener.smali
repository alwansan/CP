.class public final Lcom/shabakaty/cinemana/mod/SubtitleSyncDoneListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final context:Landroid/content/Context;

.field private final editor:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/mod/SubtitleSyncDoneListener;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/shabakaty/cinemana/mod/SubtitleSyncDoneListener;->editor:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/cinemana/mod/SubtitleSyncDoneListener;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/shabakaty/cinemana/mod/SubtitleSyncDoneListener;->editor:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/mod/SubtitleSyncHelper;->commitText(Landroid/content/Context;Landroid/widget/EditText;)V

    return-void
.end method
