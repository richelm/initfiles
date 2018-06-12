
# run sybase central
alias sybc='~/bin/sybase/shared/sybcentral600/scjview.sh &'

# aliases for Markdown
alias md='perl /home/richs/bin/Markdown/Markdown.pl'

f_panpdf() {
    pandoc -V geometry:margin=1in \
    --variable date:"`date '+%A, %B %d, %Y'`" \
    -o $1.pdf $1.md
}
alias panpdf=f_panpdf

# ipython alias
alias ipy='~/ipy.sh'

# aliases to get to folders
alias projects='cd /mnt/hc/Shares/HIT/hitis-dev/projects'
alias pm='cd /mnt/hc/Shares/HIT/hitis-dev/project_management'
alias database='cd /mnt/hc/Shares/HIT/hitis-dev/database'
alias staff='cd /mnt/hc/Shares/HIT/hitis-dev/staff'
alias sybadmin='cd /mnt/hc/Shares/HIT/hitis-dev/projects/HIT_Sybase_ASE/administration'
alias pdrive='cd /mnt/hc/richs'
alias workspace='cd ~/Documents/workspace'
alias webdev='cd /mnt/hc/Shares/HIT/webdev'

alias wttr='curl wttr.in/"East Lansing,MI"?m'

# sync Podcasts to Huawei phone
alias podto='rsync -rWv --ignore-existing --delete ~/Music/Podcast/ /media/4619-15E7/Music/Podcast'

# sync Podcasts to Sansa Clip+
#alias podto='rsync -rWv --ignore-existing --delete ~/Podcasts/ /media/0123-4567/PODCASTS'

# sync Sansa Clip+ to Podcasts
#alias podfrom='rsync -rWv --ignore-existing /media/0123-4567/PODCASTS/ ~/Podcasts'

# sync Music to Sansa Clip+
#alias musicto='rsync -rWv --ignore-existing --delete ~/Music/ /media/0123-4567/MUSIC'

# sync Sansa Clip+ to Music
#alias musicfrom='rsync -rWv --ignore-existing /media/0123-4567/MUSIC/ ~/Music'

# backup Documents folder to USB drive
alias bdocs='rsync -raWv --ignore-existing /home/richs/Documents/ /media/10a7485a-2dc8-4441-8315-d363eeddca8c/Documents'

# backup VMWARE folder to USB drive
alias bvmw='rsync -avz --ignore-existing /home/richs/vmware/ /media/10a7485a-2dc8-4441-8315-d363eeddca8c/vmware'
